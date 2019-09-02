# hello-world

Simple service for demonstration purposes with Kubernetes.

### Build

```sh
$ mvn clean package
```

## Package 

```sh
$ docker build . -t hello-world:???
```

### Deploy

```sh
$ kubectl apply -f deploy/deployment.yaml
```

### Use
```sh
$ PORT=`kubectl get service hello-world-service -o=jsonpath='{.spec.ports[0].nodePort}'`; \
  curl http://localhost:$PORT/
```