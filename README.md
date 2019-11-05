# hello-world

Simple service for demonstration purposes with Kubernetes.

### Build & Package

```sh
$ mvn clean compile jib:dockerBuild -Dimage=hello-world:???
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

