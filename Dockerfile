FROM debian:jessie
MAINTAINER k3c <k3ck3c@gmail.com>
RUN apt-get update && apt-get install -y git
RUN git clone http://github.com/markpizz/simh 
WORKDIR simh
RUN apt-get install -y make libpcap-dev bridge-utils uml-utilities
gg@gg-P15SM-A-SM1-A:~$ more docker_simh/
Dockerfile   Dockerfile~  test/        
gg@gg-P15SM-A-SM1-A:~$ more docker_simh/test/Dockerfile
FROM debian:jessie
RUN apt-get update && apt-get install -y git gcc
RUN git clone http://github.com/markpizz/simh
WORKDIR /simh
RUN apt-get install -y make libpcap-dev bridge-utils uml-utilities
RUN make 
CMD ./BIN/vax
