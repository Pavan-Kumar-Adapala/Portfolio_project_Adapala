# Automated Portfolio Hosting with GitHub Pages and GitHub Actions

This project demonstrates hosting my personal portfolio on GitHub Pages, utilizing GitHub Actions for automated deployment of static content. The project is structured to replicate a real-world software development workflow with a well-defined branching strategy, pull request management, and deployment pipeline.

## Project Details

1. **Branching Strategy:**
   - Implemented two long-lived branches:
     - `main` (default): Represents the production-ready code.
     - `development`: Serves as the integration branch where features are merged and tested before release.
   - Created short-lived **feature branches** from the `development` branch for implementing specific functionality or updates.
   - Managed urgent fixes by creating two short-lived **hotfix branches** from the `main` branch. 
     - After resolving the issues, the hotfix branches were merged back into both `main` and `development` branches to ensure all branches reflected the fixes.
   - Finalized production-ready code by creating a **release branch** from the `development` branch, containing tested and approved code ready for deployment.

2. **Pull Request Workflow:**
   - All code changes were integrated via **pull requests (PRs)** created from feature or hotfix branches.
   - Configured a mandatory **approved review** process for all pull requests to ensure code quality, consistency, and adherence to project standards before merging.

3. **Deployment:**
   - Automated deployment of the portfolio to GitHub Pages using **GitHub Actions**.
   - Configured a CI/CD pipeline to build and deploy static HTML and CSS content to GitHub Pages whenever changes are pushed to the `main` branch.

4. **Technologies Used:**
   - **Version Control:** Git, GitHub
   - **CI/CD Tools:** GitHub Actions
   - **Frontend Development:** HTML, CSS, JavaScript (basics)

## Key Objectives and Outcomes
- Demonstrated expertise in Git and GitHub by implementing a structured branching workflow and enforcing a code review process to ensure high-quality contributions.
- Showcased skills in setting up automated deployments, streamlining the process of publishing updates to a live website.
- Built a responsive and visually appealing portfolio using HTML and CSS, hosted on a reliable platform with high availability.

This project highlights my ability to manage codebases, apply industry-standard development workflows, enforce code quality through pull requests and reviews, and utilize CI/CD tools for seamless deployment.

