#!/bin/bash

# This script synchronizes the project's directory structure with the one defined in README.md
set -e

# Color definitions
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

# Save current directory
ORIGINAL_DIR=$(pwd)

# Ensure we can access the current directory
if ! pwd > /dev/null; then
    echo -e "${RED}Error: Cannot access current directory${NC}"
    echo "Please ensure you have proper permissions and the directory exists"
    exit 1
fi

# Get the script's directory and change to project root
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$(dirname "$SCRIPT_DIR")" || {
    echo -e "${RED}Error: Cannot change to project root directory${NC}"
    exit 1
}

# Ensure we're in the project root directory (where README.md should be)
if [ ! -f "scripts/create_structure.sh" ]; then
    echo -e "${RED}Error: This script must be run from the project root directory${NC}"
    echo -e "Usage: ./scripts/create_structure.sh"
    exit 1
fi

echo -e "${GREEN}Starting directory structure synchronization...${NC}"

# Check if README.md exists
if [ ! -f "README.md" ]; then
    echo -e "${RED}Error: README.md not found in the project root directory${NC}"
    echo -e "Please ensure README.md exists and contains the folder structure section"
    exit 1
fi

# Extract directory structure
start_line=$(grep -n '## Folder structure' README.md | cut -d: -f1)
if [ -z "$start_line" ]; then
    echo -e "${RED}Error: 'Folder structure' section not found in README.md${NC}"
    exit 1
fi

# Find code block markers
code_start=$(tail -n +$start_line README.md | grep -n '^```' | head -n 1 | cut -d: -f1)
if [ -z "$code_start" ]; then
    echo -e "${RED}Error: Could not find start of code block${NC}"
    exit 1
fi

start_line=$((start_line + code_start))
code_end=$(tail -n +$start_line README.md | grep -n '^```' | head -n 1 | cut -d: -f1)
if [ -z "$code_end" ]; then
    echo -e "${RED}Error: Could not find end of code block${NC}"
    exit 1
fi

end_line=$((start_line + code_end - 2))

# Extract directory structure
readme_structure=$(sed -n "$start_line,$end_line p" README.md | grep -v '^[[:space:]]*$')

# Define protected paths
protected_dirs=".git scripts node_modules dist build"
existing_files="LICENSE README.md CHANGELOG.md .markdownlint.yaml .gitlab-ci.yml .gitignore .prettierrc.yaml"

echo -e "\n${GREEN}Analyzing directory structure...${NC}"
echo -e "Protected directories:"
echo "$protected_dirs" | tr ' ' '\n' | sed 's/^/  /'
echo -e "Existing files (directories with these names will not be created):"
echo "$existing_files" | tr ' ' '\n' | sed 's/^/  /'

# Create directories
echo -e "\n${GREEN}Creating directories based on README.md structure:${NC}"
path_stack=""
keep_dirs=""
last_level=-1
last_path=""

while IFS= read -r line; do
    [ -z "$line" ] && continue
    
    # Calculate indent level
    indent_count=$(echo "$line" | sed 's/│/ /g' | awk '{ match($0, /^[[:space:]]+/); print RLENGTH }')
    [ $indent_count -lt 0 ] && indent_count=0
    current_level=$((indent_count / 4))
    
    # Extract directory name
    name=$(echo "$line" | \
           sed -E 's/^[[:space:]]*│[[:space:]]*//' | \
           sed -E 's/^[[:space:]]*[├└]───[[:space:]]*//' | \
           sed -E 's/│[[:space:]]*[├└]───[[:space:]]*//' | \
           sed -E 's/#.*$//' | \
           sed -E 's/^[[:space:]]*//;s/[[:space:]]*$//' | \
           tr -d '│')
    
    # Skip empty names and special cases
    [ -z "$name" ] && continue
    [ "$name" = ".gitkeep" ] && continue
    [ "$name" = "#" ] && continue
    
    # Skip if name conflicts with existing files
    echo "$existing_files" | grep -q -w "$name" && {
        echo "  Skipping: $name (conflicts with existing file)"
        continue
    }
    
    # Skip protected directories
    echo "$protected_dirs" | grep -q -w "$name" && continue
    
    if [ $current_level -eq 0 ]; then
        current_path="$name"
        path_stack="$name"
    else
        if [ $current_level -gt $last_level ]; then
            # Going deeper - append to last path
            current_path="$last_path/$name"
        else
            # Same level or going back - use parent path
            parent_path=$(echo "$last_path" | cut -d'/' -f1-$current_level)
            current_path="$parent_path/$name"
        fi
    fi
    
    echo "  Creating: $current_path/"
    mkdir -p "$current_path"
    
    keep_dirs="$keep_dirs $current_path"
    last_level=$current_level
    last_path="$current_path"
done <<< "$readme_structure"

# Get unique directories
sorted_unique_dirs=$(echo "$keep_dirs" | tr ' ' '\n' | sort -u)

# Create all directories first
echo -e "\n${GREEN}Creating all required directories...${NC}"
echo "$sorted_unique_dirs" | while read -r dir; do
    [ -z "$dir" ] && continue
    echo "  Creating: $dir/"
    mkdir -p "$dir"
done

# Remove unwanted directories
echo -e "\n${GREEN}Removing directories not defined in README.md:${NC}"

# List ALL directories in current directory, including hidden ones
for dir in * .*; do
    # Skip if not a directory or if it's . or ..
    [ ! -d "$dir" ] || [ "$dir" = "." ] || [ "$dir" = ".." ] && continue
    
    # Never touch .git directory
    [ "$dir" = ".git" ] && continue
    
    # Remove trailing slash and clean directory name (remove comments)
    dir=${dir%/}
    clean_dir=$(echo "$dir" | sed -E 's/#.*$//' | sed -E 's/[[:space:]]*$//')
    
    # Debug output
    echo "Processing: $dir (cleaned: $clean_dir)"
    
    # First check if it's protected
    if echo "$protected_dirs" | tr ' ' '\n' | grep -q "^$clean_dir$"; then
        echo "  Protected directory, skipping: $dir/"
        continue
    fi
    
    # Then check if directory is in our keep list
    if echo "$sorted_unique_dirs" | grep -q "^$clean_dir$"; then
        echo "  Found in README.md, keeping: $dir/"
        continue
    fi
    
    # Not protected and not in keep list - remove it
    echo "  Removing: $dir/"
    rm -rf "$dir"
done

# Also check subdirectories
find . -mindepth 2 -type d | while read -r dir; do
    # Never touch .git directory or its contents
    [[ "$dir" == "./.git" || "$dir" == "./.git/"* ]] && continue
    
    # Remove leading ./
    dir=${dir#./}
    clean_dir=$(echo "$dir" | sed -E 's/#.*$//' | sed -E 's/[[:space:]]*$//')
    
    echo "Processing subdirectory: $dir (cleaned: $clean_dir)"
    
    # Check if directory is in our keep list
    if echo "$sorted_unique_dirs" | grep -q "^$clean_dir$"; then
        echo "  Found in README.md, keeping: $dir/"
        continue
    fi
    
    # Not in keep list - remove it
    echo "  Removing: $dir/"
    rm -rf "$dir"
done

# Manage .gitkeep files
echo -e "\n${GREEN}Managing .gitkeep files...${NC}"
echo "  Cleaning up existing .gitkeep files..."
find . -name ".gitkeep" -type f -delete

echo "  Adding .gitkeep files to leaf directories:"
while read -r dir; do
    # Skip empty directory names
    [ -z "$dir" ] && continue
    
    # Check if this directory has any children
    is_parent=0
    while read -r other_dir; do
        [ -z "$other_dir" ] && continue
        [ "$dir" = "$other_dir" ] && continue
        if [[ "$other_dir" == "$dir"/* ]]; then
            is_parent=1
            break
        fi
    done < <(echo "$sorted_unique_dirs")
    
    # Create .gitkeep only in directories without children
    if [ $is_parent -eq 0 ]; then
        echo "  Adding .gitkeep to: $dir/"
        touch "$dir/.gitkeep"
    fi
done < <(echo "$sorted_unique_dirs")

echo -e "\n${GREEN}Directory structure synchronization completed successfully${NC}"

# Return to original directory
cd "$ORIGINAL_DIR" || {
    echo -e "${RED}Warning: Could not return to original directory${NC}"
}
