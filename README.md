# GA7 - Week 7

## Scaling the IRIS Classification API on GKE with CI/CD and Stress Testing

## Objective

- Building on the Week 6 CI/CD pipeline, this week’s goal was to:

- Scale the existing Iris classification FastAPI pipeline on Google Kubernetes Engine (GKE).

- Perform stress testing using wrk to simulate 1000+ concurrent inferences.

- Demonstrate Kubernetes Horizontal Pod Autoscaling (HPA) — max pods: 3, default: 1.

- Observe bottlenecks when autoscaling is disabled and concurrency increases.

## Architecture Overview

FastAPI (Iris model)
   ↓
Docker Container → Google Artifact Registry
   ↓
GitHub Actions (Build → Push → Deploy)
   ↓
Google Kubernetes Engine (GKE)
   ↓
Horizontal Pod Autoscaler (CPU-based)
   ↓
LoadBalancer → Public API endpoint


# GA 6 - Week 6

## Iris API — ML Model Deployment on Google Kubernetes Engine (GKE)

### Objective

This assignment demonstrates how to:
- Containerize a FastAPI-based Iris ML model using Docker
- Automate CI/CD using GitHub Actions
- Push Docker images to Google Artifact Registry
- Deploy and expose the model API using Google Kubernetes Engine (GKE)

### Project Structure

| File/Folder                    | Description                                                 |
| ------------------------------ | ----------------------------------------------------------- |
| `main.py`                      | FastAPI application exposing ML model prediction endpoint   |
| `model/model.pkl`              | Serialized Iris model used by the API                       |
| `requirements.txt`             | Python dependencies                                         |
| `Dockerfile`                   | Defines how to build and run the Iris API container         |
| `.github/workflows/deploy.yml` | GitHub Actions workflow for CI/CD (build, push, and deploy) |
| `k8s/deployment.yaml`          | Kubernetes Deployment and Service configuration for GKE     |
| `README.md`                    | Project documentation                                       |

### Summary
This project demonstrates the complete lifecycle of deploying a containerized ML model API on Google Cloud — from code commit to a live, scalable endpoint hosted on Google Kubernetes Engine.
