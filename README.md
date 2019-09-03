# Minimalist image exposing firebase-tools

## Docker Hub

[https://hub.docker.com/r/dikatok/firebase_docker_image](https://hub.docker.com/r/dikatok/firebase_docker_image)

## Usage

### Deploying Firebase Cloud Funtions using Google Cloud Build

Create cloud build configuration file (eg: yaml)

```yaml
steps:
  - name: node:12.9.1-alpine
    entrypoint: npm
    args: ["install"]
  - name: dikatok/firebase_docker_image
    entrypoint: firebase
    args:
      [
        "deploy",
        "--project",
        "$PROJECT_ID",
        "--only",
        "functions",
        "--token",
        "$_FIREBASE_TOKEN",
      ]
substitutions:
  _FIREBASE_TOKEN: ""
```

Invoke cloud build submission

```bash
gcloud builds submit --config=cloud_functions.yaml --substitutions=_FIREBASE_TOKEN=[YOUR_TOKEN] .
```
