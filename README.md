# CI/CD GitHub Action - Dockerized .NET 8 Console App  

This project is a simple **.NET 8 console application** that prints `"Hello world"` and is **containerized with Docker**. It is automatically built and pushed to **Docker Hub** using GitHub Actions.  

## 🚀 Run the Application from Docker Hub  

You can run this application from anywhere using **Google Cloud Shell** or any system with Docker installed.  

### **1️⃣ Open Google Cloud Shell**  
Visit: [Google Cloud Shell](https://shell.cloud.google.com)  

### **2️⃣ Pull the Docker Image**  
Run the following command to pull the latest Docker image from **Docker Hub**:  
```sh
docker pull raselkabir7868/ci_cd_github_action:latest

### ** 3 Run the Docker Container
docker run --rm raselkabir7868/ci_cd_github_action

