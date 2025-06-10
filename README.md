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
├───dist                                                          # Compiled files
├───docs                                                          # Documentation files
│   ├───index.md                                                  # Documentation index
|   |───getting-started                                           # Getting started guide
│   │   └───setup                                                 # Setup guides
│   ├───guides                                                    # Development guides
│   │   ├───setup                                                 # Setup guides
│   │   │   ├───index.md                                          # Setup guide index
│   │   │   ├───environment                                       # Environment setup
│   │   │   │   ├───windows.md                                    # Windows setup guide
│   │   │   │   ├───macos.md                                      # macOS setup guide
│   │   │   │   └───linux.md                                      # Linux setup guide
│   │   │   ├───dependencies                                      # Dependencies setup
│   │   │   │   ├───node.md                                       # Node.js setup
│   │   │   │   ├───docker.md                                     # Docker setup
│   │   │   │   └───database.md                                   # Database setup
│   │   │   └───ide                                               # IDE configuration
│   │   │       ├───vscode.md                                     # VS Code setup
│   │   │       └───intellij.md                                   # IntelliJ setup
│   ├───architecture                                              # System architecture
│   │   ├───overview                   
│   │   │   ├───introduction          
│   │   │   │   ├───system-overview.md                            # System overview and goals
│   │   │   │   └───business-goals.md                             # Business requirements
│   │   │   ├───tech-stack           
│   │   │   │   ├───frontend-stack.md                             # Frontend technology choices
│   │   │   │   ├───backend-stack.md                              # Backend technology choices
│   │   │   │   └───infrastructure-stack.md                       # Infrastructure technology
│   │   │   └───principles           
│   │   │       ├───design-principles.md                          # Core design principles
│   │   │       └───coding-principles.md                          # Coding standards
│   │   ├───database                   
│   │   │   ├───models               
│   │   │   │   ├───customer-model.md                             # Customer entity design
│   │   │   │   ├───contact-model.md                              # Contact entity design
│   │   │   │   ├───opportunity-model.md                          # Opportunity entity design
│   │   │   │   └───activity-model.md                             # Activity tracking model
│   │   │   ├───schemas              
│   │   │   │   ├───schema-overview.md                            # Database schema overview
│   │   │   │   └───schema-migrations.md                          # Schema migration strategy
│   │   │   └───sharding            
│   │   │       ├───sharding-strategy.md                          # Data sharding approach
│   │   │       └───data-distribution.md                          # Data distribution rules
│   │   ├───features                  
│   │   │   ├───auth                
│   │   │   │   ├───authentication  
│   │   │   │   │   ├───jwt-auth.md                               # JWT authentication design
│   │   │   │   │   └───sso-integration.md                        # SSO integration design
│   │   │   │   └───authorization   
│   │   │   │       ├───rbac-design.md                            # Role-based access control
│   │   │   │       └───permission-matrix.md                      # Permission definitions
│   │   │   ├───i18n                
│   │   │   │   ├───translation-strategy.md                       # Translation management
│   │   │   │   └───language-detection.md                         # Language detection logic
│   │   │   ├───storage             
│   │   │   │   ├───file-storage.md                               # File storage design
│   │   │   │   └───cdn-integration.md                            # CDN configuration
│   │   │   └───search              
│   │   │       ├───search-engine.md                              # Search engine design
│   │   │       └───indexing-strategy.md                          # Search indexing strategy
│   │   ├───security                  
│   │   │   ├───encryption         
│   │   │   │   ├───data-encryption.md                            # Data encryption methods
│   │   │   │   └───key-management.md                             # Encryption key management
│   │   │   └───protocols          
│   │   │       ├───security-protocols.md                         # Security protocols
│   │   │       └───compliance.md                                 # Security compliance
│   │   ├───infrastructure           
│   │   │   ├───network            
│   │   │   │   ├───network-topology.md                           # Network architecture
│   │   │   │   └───load-balancing.md                             # Load balancing strategy
│   │   │   └───cloud              
│   │   │       ├───cloud-services.md                             # Cloud service usage
│   │   │       └───scaling-strategy.md                           # Scaling approach
│   │   ├───diagrams                 
│   │   │   ├───system             
│   │   │   │   ├───system-architecture.md                        # System architecture diagrams
│   │   │   │   └───component-diagram.md                          # Component relationships
│   │   │   └───sequence           
│   │   │       ├───auth-flow.md                                  # Authentication flow
│   │   │       └───order-process.md                              # Order processing flow
│   │   └───decisions               
│   │       ├───records            
│   │       │   ├───adr-001-auth-strategy.md                      # Authentication strategy decision
│   │       │   └───adr-002-database-choice.md                    # Database selection decision
│   │       └───proposals          
│   │           ├───microservices-proposal.md                     # Microservices architecture
│   │           └───caching-strategy-proposal.md                  # Caching strategy
│   └───todo.md                                                   # TODO list
├───config                                                        # Project configuration files
│   ├───dev                                                       # Development environment
│   ├───prod                                                      # Production environment
│   └───test                                                      # Testing environment
├───docker                                                        # Docker configuration files
│   ├───compose                                                   # Docker compose files
│   │   ├───dev                                                   # Development compose files
│   │   └───prod                                                  # Production compose files
│   ├───config                                                    # Docker configurations
│   │   ├───nginx                                                 # Nginx configuration
│   │   └───redis                                                 # Redis configuration
│   └───services                                                  # Dockerfile for services
│       ├───backend                                               # Backend service
│       ├───frontend                                              # Frontend service
│       └───worker                                                # Worker service
├───resources                                                     # Project resources
│   ├───images                                                    # Image assets
│   ├───fonts                                                     # Font files
│   ├───icons                                                     # Icon assets
│   └───templates                                                 # Template files
├───scripts                                                       # Scripts
├───src                                                           # Source files
│   ├───app-android                                               # Android app source files
│   ├───app-ios                                                   # iOS app source files
│   ├───server                                                    # Server source files
│   ├───tools                                                     # Tools source files
│   ├───web                                                       # Web source files
│   └───web-hybrid                                                # Web hybrid source files
├───tests                                                         # Test files
│   ├───unit                                                      # Unit tests
│   │   ├───app-android                                           # Android app unit tests
│   │   ├───app-ios                                               # iOS app unit tests
│   │   ├───server                                                # Server unit tests
│   │   │   ├───controllers                                       # Controller unit tests
│   │   │   ├───models                                            # Model unit tests
│   │   │   ├───services                                          # Service unit tests
│   │   │   └───utils                                             # Utility unit tests
│   │   ├───tools                                                 # Tools unit tests
│   │   ├───web                                                   # Web unit tests
│   │   │   ├───components                                        # Component unit tests
│   │   │   ├───hooks                                             # Hook unit tests
│   │   │   ├───services                                          # Service unit tests
│   │   │   └───utils                                             # Utility unit tests
│   │   └───web-hybrid                                            # Web hybrid unit tests
│   ├───integration                                               # Integration tests
│   │   ├───api                                                   # API integration tests
│   │   │   ├───auth                                              # Authentication API tests
│   │   │   ├───user                                              # User API tests
│   │   │   └───data                                              # Data API tests
│   │   ├───database                                              # Database integration tests
│   │   │   ├───migrations                                        # Migration tests
│   │   │   ├───models                                            # Model integration tests
│   │   │   └───queries                                           # Query tests
│   │   ├───services                                              # Service integration tests
│   │   │   ├───external-apis                                     # External API integration tests
│   │   │   ├───messaging                                         # Messaging service tests
│   │   │   └───storage                                           # Storage service tests
│   │   └───workflows                                             # Workflow integration tests
│   ├───e2e                                                       # End-to-end tests
│   │   ├───web                                                   # Web E2E tests
│   │   │   ├───auth                                              # Authentication flow tests
│   │   │   ├───user-journey                                      # User journey tests
│   │   │   ├───admin                                             # Admin panel tests
│   │   │   └───mobile-responsive                                 # Mobile responsive tests
│   │   ├───app-android                                           # Android E2E tests
│   │   │   ├───login                                             # Login flow tests
│   │   │   ├───navigation                                        # Navigation tests
│   │   │   └───features                                          # Feature tests
│   │   ├───app-ios                                               # iOS E2E tests
│   │   │   ├───login                                             # Login flow tests
│   │   │   ├───navigation                                        # Navigation tests
│   │   │   └───features                                          # Feature tests
│   │   └───cross-platform                                        # Cross-platform E2E tests
│   │       ├───data-sync                                         # Data synchronization tests
│   │       └───feature-parity                                    # Feature parity tests
│   ├───performance                                               # Performance tests
│   │   ├───load                                                  # Load testing
│   │   ├───stress                                                # Stress testing
│   │   └───benchmark                                             # Benchmark tests
│   ├───security                                                  # Security tests
│   │   ├───auth                                                  # Authentication security tests
│   │   ├───api                                                   # API security tests
│   │   └───data                                                  # Data security tests
│   ├───fixtures                                                  # Test fixtures and data
│   │   ├───data                                                  # Test data files
│   │   ├───mocks                                                 # Mock objects
│   │   └───stubs                                                 # Stub implementations
│   ├───helpers                                                   # Test helper functions
│   │   ├───setup                                                 # Test setup utilities
│   │   ├───assertions                                            # Custom assertions
│   │   └───utilities                                             # Test utilities
│   └───config                                                    # Test configuration
│       ├───jest.config.js                                        # Jest configuration
│       ├───cypress.config.js                                     # Cypress configuration
│       ├───playwright.config.js                                  # Playwright configuration
│       └───test-env                                               # Test environment configs
├───.gitignore                                                    # Git ignore file    
├───.gitlab-ci.yml                                                # GitLab CI configuration file
├───.markdownlint.yaml                                            # Markdownlint configuration file
├───.prettierrc.yaml                                              # Prettier configuration file
├───CHANGELOG.md                                                  # Change log
├───LICENSE                                                       # License
└───README.md                                                     # Project description
```

## Directory Structure Maintenance

If you make changes to the project's directory structure, please run the `scripts/create_structure.sh` script to ensure consistency.

```bash
bash scripts/create_structure.sh
```

## Copyright and license

Copyright © 2022-2024 NESNILNEHC

Licensed under [the MIT License](/LICENSE)
