# About

Template sinatra application.

```
start-minikube() {
  minikube start \
    --driver=virtualbox \
    --cpus 8 \
    --memory 8g \
    --cni=cilium \
    --addons=ingress,metrics-server
}

configure-docker-client() {
    eval $(minikube docker-env)
}

$ start-minikube
$ configure-docker-client
$ make image
$ kubectl apply --filename stack.yaml
$ curl -H "Host: app.example.com" http://$(minikube ip)/
```
