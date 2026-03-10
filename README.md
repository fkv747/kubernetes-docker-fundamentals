# Kubernetes + Docker Fundamentals (Local Cluster)

This project demonstrates:

- Building a Docker image from a Python Flask app
- Running containers locally
- Creating a Kubernetes Deployment
- Exposing the app using a NodePort Service
- Scaling replicas
- Cleaning up Kubernetes resources

---

## Project Structure
Dockerfile
app.py
deployment.yaml
service.yaml
requirements.txt


---

## Step 1: Build Docker Image

```bash
docker build -t myapp .
Step 2: Run Container (Docker Only)
docker run -p 5000:5000 myapp

Access:
http://localhost:5000

Step 3: Deploy to Local Kubernetes

Apply deployment:

kubectl apply -f deployment.yaml

Apply service:

kubectl apply -f service.yaml

Access via NodePort:

http://localhost:30007

Step 4: Scale Deployment
kubectl scale deployment myapp-deployment --replicas=4
Step 5: Cleanup
kubectl delete -f deployment.yaml
kubectl delete -f service.yaml
What I Learned

Difference between Docker container vs Kubernetes pod

How NodePort exposes services locally

How Kubernetes reconciles state after reboot

How Deployments manage ReplicaSets and Pods


---