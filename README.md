# niemipt's docker image repository

This repository contains my docker images for automated build

All docker images are built from this repository which contains subdirectory for every Dockerfile

### niemipt/mule

Using example
```
docker run -d -v ~/docker_shares/mule/apps:/opt/mule/apps -v ~/docker_shares/mule/conf:/opt/mule/conf -v ~/docker_shares/logs:/opt/mule/logs niemipt/mule
```
