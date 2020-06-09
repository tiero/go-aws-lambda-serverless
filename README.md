# Go on AWS Lambda with Serverless CLI

## Build

```sh
$ make build
```

## Local

```sh
# Run Hello function
$ sls invoke local -f hello
# Run World function
$ sls invoke local -f world
```

## Deploy 

```sh
# Dev
$ make deploy-dev
# Prod
$ make deploy-prod
```

