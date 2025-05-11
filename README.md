# Automated Portfolio Hosting with GitHub Pages, Docker, and ArgoCD

This project showcases the automated deployment of a personal portfolio using **GitHub Actions**, extending the workflow to include Docker image creation and pushing to DockerHub. Additionally, it outlines the next steps for implementing **Continuous Deployment (CD)** using **ArgoCD**, demonstrating a modern DevOps workflow.

## ✅ Project Overview

* Automated deployment to **GitHub Pages** using **GitHub Actions**.
* Implementation of **Docker build and push job** to DockerHub for containerization.
* Well-structured branching strategy that simulates a real-world development environment.
* Preparation for **ArgoCD** integration for continuous deployment.

## 🚀 Project Structure and Workflow

### **Branching Strategy:**

* **main (default):** Production-ready code.
* **development:** Integration branch for testing new features.
* Short-lived **feature branches** for implementing specific functionalities.
* **hotfix branches** for urgent fixes, merged back into both `main` and `development` branches.
* **release branch:** Stabilized and tested code before merging to `main`.

![Branching Strategy](https://raw.githubusercontent.com/Pavan-Kumar-Adapala/Portfolio_project_Adapala/main/assets/img/branching_strategy.jpg)

### **Pull Request Workflow:**

* All changes are integrated through pull requests (PRs) from feature/hotfix branches.
* Mandatory code review and approval for all PRs to enforce quality and consistency.

### **Deployment Workflow:**

* **GitHub Pages:** Automated deployment of static HTML, CSS, and JavaScript content.
* **DockerHub:**

  * Automated Docker build and push using GitHub Actions.
  * The Docker image is tagged as `latest` for easy tracking.
  * Potential for versioning in future iterations.

### **Technologies Used:**

* Version Control: **Git, GitHub**
* CI/CD: **GitHub Actions, DockerHub**
* Containerization: **Docker**
* Deployment: **GitHub Pages**, **ArgoCD (Planned)**
* Frontend: **HTML, CSS, JavaScript (basic)**

## Implementation Details

### **GitHub Actions Workflow: Docker Build and Push**

* The workflow includes:

  * **Checkout repository code.**
  * **Build Docker image** from the source code.
  * **Push the Docker image** to DockerHub with the `latest` tag.
  * **Logout** from DockerHub to ensure security and prevent token leakage.

### **Example Workflow Snippet:**

```yaml
  # Build and Push Docker Image
  build-and-push:
    runs-on: ubuntu-latest
    needs: deploy-pages
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      # Set up Docker Buildx to enable advanced build capabilities like multi-platform builds
      - name: Set up Docker Buildx
        uses: docker/setup-buildx-action@v2

      # Login to Docker Hub
      - name: Login to Docker Hub
        uses: docker/login-action@v2
        with:
          username: ${{ secrets.DOCKER_USERNAME }}
          password: ${{ secrets.DOCKER_PASSWORD }}
          logout: false
      
      # Build and push the Docker image
      # This step builds the Docker image and pushes it to Docker Hub
      - name: Build and push Docker image
        uses: docker/build-push-action@v4
        with:
          context: .
          file: ./Dockerfile
          push: true
          tags: ${{ secrets.DOCKER_USERNAME }}/portfolio:latest

      # Logout from Docker Hub to ensure security and clean up the session
      - name: Logout from Docker Hub
        run: |
          docker logout
          echo "Logged out from Docker Hub"

```

## Next Steps: Implementing ArgoCD

* **Why ArgoCD?**

  * Continuous Deployment with GitOps principles.
  * Real-time monitoring and synchronization of Kubernetes resources.
  * Declarative configuration management with automated rollbacks and rollouts.

* **Implementation Plan:**

  * Deploy Docker container to a Kubernetes cluster using ArgoCD.
  * Implement `Application.yaml` to define deployment configurations.
  * Set up automated synchronization between GitHub repository and Kubernetes cluster.
  * Monitor deployments and implement rollback strategies for failed updates.

## Key DevOps Skills Highlighted

* Experience in setting up **CI/CD pipelines** using **GitHub Actions**.
* Proficient in creating and pushing **Docker images** to DockerHub.
* Demonstrated ability to **implement new tools** (e.g., ArgoCD) and integrate them into existing workflows.
* Knowledge of structured branching strategies and **pull request management**.

