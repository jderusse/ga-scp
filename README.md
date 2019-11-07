# Github Action for SCP

## Usage

You can use it as a Github Action like this:

_.github/workflows/deploy.yml_
```
on:
  push:
    branches:
    - master
name: Deploy application
jobs:
  Deploy:
    name: Run docker-compose up
    runs-on: ubuntu-latest
    steps:
    - name: Start containers
      uses: jderusse/ga-scp@master
      with:
        host: host.example.com
        username: user
        key: ${{ secrets.PRIVATE_KEY }}
        source: /local/path
        target: /remote/path
```

## Docker

A Docker-Image is built automatically and located here:
https://hub.docker.com/r/jderusse/ga-scp

You can run it in any given directory like this:

`docker run --rm -it jderusse/ga-scp:latest`
