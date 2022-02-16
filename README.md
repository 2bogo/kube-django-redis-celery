<h1 align="center">Deploy django-celery-redis with Kubernetes</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-blue.svg?cacheSeconds=2592000" />
  <a href="#" target="_blank">
    <img alt="License: MIT License" src="https://img.shields.io/badge/License-MIT License-yellow.svg" />
  </a>
</p>

> Deploy web application using Django, Celery, Redis, Nginx, and Kubernetes.

## Getting Started
- docker-compose
```
docker-compose build --no-cache
```

- build image
```
docker tag local-image:tagname {username/reponame}:tagname
docker push {username/reponame}:tagname
```

- deploy with kubernetes
```
kubectl apply -f ./kubernetes/config_map.yaml
kubectl apply -f ./kubernetes/redis.yaml
kubectl apply -f ./kubernetes/django-app.yaml
kubectl apply - ./kubernetes/django-celery.yaml
minikube service --url django-service
```