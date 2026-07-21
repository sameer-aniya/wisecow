# Wisecow Application Deployment on Kubernetes

## Project Overview

This project demonstrates the containerization and deployment of the Wisecow application on Kubernetes as part of the AccuKnox DevOps Trainee Practical Assessment.

The application has been:
- Dockerized using a Dockerfile
- Deployed on a Kubernetes cluster (Minikube)
- Exposed using a Kubernetes Service
- Secured with TLS using Kubernetes Ingress
- Automated using GitHub Actions CI/CD

---

## Tech Stack

- Docker
- Kubernetes
- Minikube
- NGINX Ingress Controller
- GitHub Actions
- OpenSSL

---

## Project Structure

```
.
├── Dockerfile
├── wisecow.sh
├── .github/
│   └── workflows/
│       └── deploy.yml
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   └── ingress.yaml
├── certs/
└── README.md
```

---

## Running the Application Locally

Install dependencies:

```bash
sudo apt install fortune-mod cowsay -y
```

Run the application:

```bash
./wisecow.sh
```

Open:

```
http://localhost:4499
```

---

## Docker

Build the image:

```bash
docker build -t blackrabbitx/wisecow:v1 .
```

Run the container:

```bash
docker run -d -p 4499:4499 blackrabbitx/wisecow:v1
```

---

## Kubernetes Deployment

Apply the manifests:

```bash
kubectl apply -f k8s/
```

Verify:

```bash
kubectl get pods
kubectl get svc
kubectl get ingress
```

---

## CI/CD Pipeline

GitHub Actions automatically:

- Builds the Docker image
- Pushes the image to Docker Hub
- Triggers on every push to the repository

Workflow location:

```
.github/workflows/deploy.yml
```

---

## TLS Configuration

HTTPS is enabled using:

- Kubernetes Ingress
- Self-signed TLS Certificate
- Kubernetes TLS Secret (`wisecow-tls`)

Application URL:

```
https://wisecow.local:8443
```

---

## Features Implemented

- Dockerized Wisecow application
- Kubernetes Deployment
- Kubernetes Service
- NGINX Ingress
- TLS enabled
- GitHub Actions CI pipeline

---

## Author

**Sameer Aniya**

AccuKnox DevOps Trainee Practical Assessment
<img width="1912" height="971" alt="image" src="https://github.com/user-attachments/assets/30157ac1-9bb0-4d86-b512-6af09b4761fb" />



