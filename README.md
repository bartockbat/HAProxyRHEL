# HAProxyRHEL

The following is an HAProxy docker container example.

I have configured it as a simple load balancer with 3 web servers that I have running locally. 

To build , simply:

1. git clone https://github.com/bartockbat/HAProxyRHEL.git
2. sudo docker build -t (container_name) .
3. sudo docker run -it (container_name) bash
