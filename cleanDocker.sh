

# Delete every Docker containers
# Must be run first because images are attached to containers
docker rm $(docker ps -a -q)

# Delete every Docker image
docker rmi $(docker images -q)

# Delete docker disk
find ~ -name Docker.qcow2 -exec rm {} \;
