# 🚀 Dockerized ToDo Application – DevOps Capstone Project

<img width="599" height="336" alt="architecture diagram" src="https://github.com/user-attachments/assets/758d7f24-af9d-42af-ae22-238244e019a7" />


## 📌 Project Overview
This capstone project demonstrates an **end-to-end DevOps implementation** for a cloud‑native **ToDo Application**, focusing on automation, scalability, reliability, and GitOps best practices. The project covers everything from application containerization to CI/CD, Infrastructure as Code, Kubernetes orchestration, and GitOps‑based deployments on AWS.

The goal of this project is to simulate a **real‑world DevOps production workflow** suitable for enterprise environments.

---

## 🎯 Objectives
- Build and containerize a Node.js ToDo application using Docker
- Provision AWS infrastructure using Terraform (VPC, EKS, IAM)
- Implement CI/CD pipelines using CircleCI
- Deploy the application on Kubernetes (EKS)
- Use Argo CD for GitOps‑based continuous delivery
- Ensure versioned, automated, and repeatable deployments

---

## 🛠️ Tech Stack & Tools

### Application Layer
- Node.js (ToDo App)
- Docker (Multi‑stage Dockerfile)

### CI/CD
- CircleCI
- GitHub

### Infrastructure
- AWS (EKS, VPC, IAM, EC2, Load Balancer)
- Terraform (IaC)

### Orchestration & GitOps
- Kubernetes
- Argo CD

---

## 📂 Repository Structure
```
Dockerized-ToDo-App/
│
├── AppCode/                 # Application source code & Dockerfile
│
├── kube_manifest/           # Kubernetes manifests
│   └── manifest/
│       ├── deployment.yaml
│       └── service.yaml
│
├── kube_terraform/          # Terraform IaC
│   ├── modules/
│   │   ├── vpc/
│   │   ├── eks/
│   │   └── iam/
│   └── ToDo-App/
│       ├── main.tf
│       ├── variables.tf
│       └── terraform.tfvars
│
├── .circleci/
│   └── config.yml           # CI/CD pipeline
│
└── README.md
```

---

## 🔄 CI/CD Workflow (CircleCI)
1. Code pushed to GitHub
2. CircleCI triggers pipeline
3. Docker image built with tag `build-<CIRCLE_BUILD_NUM>`
4. Image pushed to Docker Hub
5. Kubernetes deployment manifest updated with new image tag
6. Changes pushed to deployment branch

---

## 🔁 GitOps Workflow (Argo CD)
- Argo CD continuously watches the GitHub deployment branch
- Any change in Kubernetes manifests is automatically synced
- Application state in EKS always matches Git repository state

---

## ☁️ Infrastructure Provisioning (Terraform)
- VPC with public & private subnets
- Internet Gateway & route tables
- IAM roles for EKS cluster and nodes
- EKS cluster and managed node groups

Infrastructure is fully version‑controlled and reproducible.

---

## 🧱 Kubernetes Components
- **Deployment** – Manages pod replicas
- **Service** – Exposes app via NodePort / LoadBalancer
- **Pods** – Run Docker containers

Health & availability handled via Kubernetes self‑healing.

---

## 🏗️ Architecture Diagram (Textual Representation)
```
Developer
   │
   ▼
GitHub Repository
   │
   ▼
CircleCI (CI Pipeline)
   │  - Build Docker Image
   │  - Push to Docker Hub
   │  - Update K8s Manifests
   ▼
GitHub (Deployment Branch)
   │
   ▼
Argo CD (GitOps CD)
   │
   ▼
AWS EKS Cluster
   │
   ├── Kubernetes Deployment
   │     └── Pods (ToDo App Containers)
   │
   └── Kubernetes Service
         └── Load Balancer → End Users
```

---

## 🔐 Security & Best Practices
- IAM roles with least privilege
- No hardcoded secrets (env‑based)
- GitOps prevents manual cluster drift
- Immutable Docker images

---

## 🧪 Common Issues Solved During Project
- Kubernetes image tag mismatch in CI
- Terraform EKS version downgrade error
- Time sync issues affecting AWS auth
- Argo CD port‑forwarding & service exposure
- Git detached HEAD & branch conflicts

---

## 📈 What This Project Demonstrates (For Resume)
- End‑to‑end DevOps pipeline on AWS
- Hands‑on Terraform + Kubernetes + GitOps
- Real‑world CI/CD automation
- Production‑grade DevOps workflow

---

## 👤 Author
**Yash Sanjay Baile**  
MSc Computer Science | DevOps Engineer (Fresher)  
Location: Maharashtra, India

---

## ✅ Future Enhancements
- Add monitoring (Prometheus + Grafana)
- Implement HPA & autoscaling
- Secure secrets with AWS Secrets Manager
- Add ingress with HTTPS

---

🔥 This project is designed as a **strong DevOps capstone** suitable for interviews, resumes, and real‑world demonstrations.


