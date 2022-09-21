apiVersion: apps/v1
kind: Deployment
metadata:
  name: nodeapp
  namespace: default
  labels:
    app: nodeapp
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nodeapp
  template:
    metadata:
      labels:
        app: nodeapp
    spec:
      containers:
      - name: nodeapp
        image: us-docker.pkg.dev/GOOGLE_CLOUD_PROJECT/nodeapp/myapp:COMMIT_SHA
        ports:
        - containerPort: 3000