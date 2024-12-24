# FULLSTACK PROJECT BOILERPLATE

A modern, enterprise-grade fullstack boilerplate providing standardized project structure and best practices for rapid development.

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
