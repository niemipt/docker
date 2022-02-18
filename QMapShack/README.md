## niemipt/qmapshack

###### Versions
* latest [Dockerfile](https://github.com/niemipt/docker/blob/master/qmapshack/Dockerfile)

###### Using example
```
sudo ifconfig lo0 alias 10.200.10.1/24
open -a XQuartz
xhost + 10.200.10.1
docker run -d --rm --name QMapShack \
	-e DISPLAY=10.200.10.1:0 \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	niemipt/qmapshack
```
