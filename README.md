# Project Template

A standardized project directory structure template to help quickly set up a well-organized project framework.

## Features

- Standardized directory structure for consistent organization
- Comprehensive documentation setup with clear categories
- Environment-specific configuration management
- Cross-platform application support (Web, Mobile, Server)

## Quick Start

1. Clone the template

```bash
git clone https://github.com/NESNILNEHC/project-template.git
cd project-template
```

1. Customize the structure
   - Adjust directories based on project needs
   - Configure environment-specific settings
   - Update project documentation

## Folder structure

```
.
├───dist                  # Compiled files (alternatively `build`)
├───docs                  # Documentation files (alternatively `doc`)
│   ├───api               # API documentation
│   ├───guides            # Various guides
│   │   ├───dev           # Developer guides
│   │   ├───ops           # Operations guides
│   │   └───user          # End-user guides
│   ├───architecture      # System architecture
│   │   ├───design        # Design documents
│   │   └───diagrams      # Architecture diagrams
│   ├───contributing      # Contribution guidelines
│   └───release           # Release notes and versioning
├───config                # Project configuration files, such as database configuration, environment variable configuration, etc.
│   ├───dev               # Development environment
│   ├───prod              # Production environment
│   └───test              # Testing environment
├───resources             # Project resources
│   ├───images            # Image assets
│   ├───fonts             # Font files
│   ├───icons             # Icon assets
│   └───templates         # Template files
├───scripts               # Scripts
├───src                   # Source files
│   ├───app-android       # Android app source files
│   ├───app-ios           # iOS app source files
│   ├───server            # Server source files
│   ├───tools             # Tools source files
│   ├───web               # Web source files
│   └───web-hybrid        # Web hybrid source files
├───.gitignore            # Git ignore file    
├───.gitlab-ci.yml        # GitLab CI configuration file
├───.markdownlint.yaml    # Markdownlint configuration file
├───.prettierrc.yaml      # Prettier configuration file
├───CHANGELOG.md          # Change log
├───LICENSE               # License
└───README.md             # Project description
```

## Copyright and license

Copyright © 2022-2024 NESNILNEHC

Licensed under [the MIT License](/LICENSE)
