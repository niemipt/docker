1. open -a XQuarz
2. lsof -i :6000
3. ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}') && echo "My IP is: $ip"
4. xhost + ${ip}
5. docker run -t -i -e DISPLAY=${ip}:0 -v /tmp/.X11-unix:/tmp/.X11-unix niemipt/netkit
