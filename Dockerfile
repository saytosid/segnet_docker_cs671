FROM aospan/docker-segnet
MAINTAINER saytosid@gmail.com
ENV HTTP_PROXY=http://10.7.0.1:8080
ENV http_proxy=http://10.7.0.1:8080
COPY apt.conf /etc/apt/
RUN rm segnet_demo.py 
COPY segnet_demo.py /workspace
RUN mkdir /workspace/out
CMD /bin/bash
 
