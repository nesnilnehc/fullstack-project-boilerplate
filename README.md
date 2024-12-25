# FULLSTACK PROJECT BOILERPLATE

A modern, enterprise-grade fullstack boilerplate providing standardized project structure and best practices for rapid development.

## Features

- Standardized directory structure for consistent organization
- Comprehensive documentation setup with clear categories
- Environment-specific configuration management
- Cross-platform application support (Web, Mobile, Server)

## Quick Start

There are several ways to use this boilerplate:

### Option 1: Download ZIP

1. Download the ZIP file of this repository
2. Extract it into your existing project directory
3. Customize the structure and content according to your needs:
   - Update project name and description in README.md
   - Modify package.json with your project details
   - Adjust the folder structure as needed
   - Remove unnecessary directories and files

### Option 2: Clone and Push to Your Repository

1. Clone the template

```bash
git clone https://github.com/nesnilnehc/fullstack-project-boilerplate.git
cd fullstack-project-boilerplate
```

1. Remove the existing Git history

```bash
rm -rf .git
```

1. Initialize a new Git repository

```bash
git init
```

1. Customize the project:
   - Update project name and description in README.md
   - Modify package.json with your project details
   - Update LICENSE file with your information
   - Configure environment-specific settings
   - Update project documentation

1. Push to your repository

```bash
git remote add origin your-repository-url
git add .
git commit -m "Initial commit"
git push -u origin main
```

### Option 3: Use as a Template

1. Click the "Use this template" button on GitHub
2. Create a new repository using this template
3. Clone your new repository
4. Customize as needed following the steps above

## Folder structure

```
.
├───dist                                # Compiled files (alternatively `build`)
├───docs                                # Documentation files (alternatively `doc`)
│   ├───api                             # API documentation
│   ├───guides                          # Various guides
│   │   ├───dev                         # Developer guides
│   │   ├───ops                         # Operations guides
│   │   └───user                        # End-user guides
│   ├───architecture                    # System architecture
│   │   ├───design                      # Design documents
│   │   └───diagrams                    # Architecture diagrams
│   ├───contributing                    # Contribution guidelines
│   └───release                         # Release notes and versioning
├───config                              # Project configuration files, such as database configuration, environment variable configuration, etc.
│   ├───dev                             # Development environment
│   ├───prod                            # Production environment
│   └───test                            # Testing environment
├───docker                              # Docker configuration files
│   ├───compose                         # Docker compose files for different environments
│   │   ├───dev                         # Development environment compose files
│   │   └───prod                        # Production environment compose files
│   ├───config                          # Docker configurations (nginx, redis etc.)
│   │   ├───nginx                       # Nginx configuration
│   │   └───redis                       # Redis configuration
│   └───services                        # Dockerfile for different services
│       ├───backend                     # Backend service
│       ├───frontend                    # Frontend service
│       └───worker                      # Worker service
├───resources                           # Project resources
│   ├───images                          # Image assets
│   ├───fonts                           # Font files
│   ├───icons                           # Icon assets
│   └───templates                       # Template files
├───scripts                             # Scripts
├───src                                 # Source files
│   ├───app-android                     # Android app source files
│   ├───app-ios                         # iOS app source files
│   ├───server                          # Server source files
│   ├───tools                           # Tools source files
│   ├───web                             # Web source files
│   └───web-hybrid                      # Web hybrid source files
├───.gitignore                          # Git ignore file    
├───.gitlab-ci.yml                      # GitLab CI configuration file
├───.markdownlint.yaml                  # Markdownlint configuration file
├───.prettierrc.yaml                    # Prettier configuration file
├───CHANGELOG.md                        # Change log
├───LICENSE                             # License
└───README.md                           # Project description
```

## Directory Structure Maintenance

If you make changes to the project's directory structure, please run the `scripts/create_structure.sh` script to ensure consistency.

```bash
bash scripts/create_structure.sh
```

## Copyright and license

Copyright © 2022-2024 NESNILNEHC

Licensed under [the MIT License](/LICENSE)
