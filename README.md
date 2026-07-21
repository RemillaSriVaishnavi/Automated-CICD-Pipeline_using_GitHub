# 🚀 Automated CI/CD Pipeline using GitHub Actions, Docker & Trivy

## 📌 Project Overview

This project demonstrates a complete **CI/CD (Continuous Integration & Continuous Delivery) pipeline** for a Node.js Express application using **GitHub Actions**.

The pipeline automatically:

- Builds the application
- Runs automated tests
- Performs security scanning using Trivy
- Builds a Docker image
- Pushes the Docker image to GitHub Container Registry (GHCR)
- Deploys to a staging environment
- Requires manual approval before deploying to production

This project follows modern DevSecOps best practices by integrating security scanning into the deployment workflow.


## Architecture

```
Developer Pushes Code
          │
          ▼
 GitHub Actions Trigger
          │
          ▼
 Continuous Integration
 ├── Install Dependencies
 ├── Run Linter
 └── Run Tests
          │
          ▼
 Build Docker Image
          │
          ▼
 Trivy Security Scan
          │
          ▼
 Push Image to GitHub Container Registry (GHCR)
          │
          ▼
 Deploy to Staging
          │
          ▼
 Manual Approval Required
          │
          ▼
 Deploy to Production
```

## Tech Stack

- Node.js
- Express.js
- GitHub Actions
- Docker
- Trivy
- GitHub Container Registry (GHCR)
- GitHub Environments
- Git
- GitHub


## Project Structure

```
Automated-CICD-Pipeline_using_GitHub/
│
├── .github/
│   └── workflows/
│       └── ci-cd.yml
│
├── src/
│   ├── app.js
│   └── index.js
│
├── tests/
│   └── app.test.js
│
├── Dockerfile
├── .dockerignore
├── .gitignore
├── package.json
├── package-lock.json
├── .env.example
└── README.md
```

## CI/CD Pipeline Workflow

### Continuous Integration (CI)
Whenever a Pull Request is created:
- Checkout repository
- Install dependencies
- Run ESLint
- Run Jest tests

### Continuous Delivery (CD)
Whenever code is merged into the **main** branch:
- Build Docker image
- Scan Docker image using Trivy
- Login to GitHub Container Registry
- Push Docker image to GHCR
- Deploy to Staging
- Wait for Manual Approval
- Deploy to Production


## Security Features
- Docker image vulnerability scanning using Trivy
- GitHub Secrets for secure authentication
- No hardcoded credentials
- Manual approval before production deployment
- GitHub Environment Protection Rules


## Secrets Management
The project securely uses GitHub Secrets.
Example:

```yaml
password: ${{ secrets.GITHUB_TOKEN }}
```

No passwords, tokens or API keys are stored inside the repository.


## Docker
Build Docker Image

```bash
docker build -t my-app .
```

Run Docker Container
```bash
docker run -d -p 3000:3000 my-app
```

## Running Locally
Clone repository
```bash
git clone https://github.com/RemillaSriVaishnavi/Automated-CICD-Pipeline_using_GitHub.git
```

Go inside project
```bash
cd Automated-CICD-Pipeline_using_GitHub
```

Install dependencies
```bash
npm install
```

Run application
```bash
npm start
```

Run tests
```bash
npm test
```

## GitHub Actions Workflow
The GitHub Actions workflow performs:
- Source Checkout
- Node.js Setup
- Dependency Installation
- Linting
- Testing
- Docker Build
- Trivy Scan
- Push to GHCR
- Deploy to Staging
- Manual Approval
- Deploy to Production


# 📷 Screenshots

Add screenshots for:

- GitHub Actions Workflow
- Successful Build
- Trivy Scan
- GHCR Package
- Staging Deployment
- Waiting for Manual Approval
- Production Deployment
- GitHub Environments


## Key Learning Outcomes

- GitHub Actions
- Continuous Integration
- Continuous Delivery
- Docker Containerization
- GitHub Container Registry
- Trivy Security Scanning
- GitHub Secrets
- Environment Protection Rules
- Production Deployment Gates
- DevSecOps Best Practices
