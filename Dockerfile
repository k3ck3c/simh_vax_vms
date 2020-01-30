FROM debian:jessie
RUN apt-get update && apt-get install -y git gcc
RUN git clone http://github.com/markpizz/simh
WORKDIR /simh
RUN apt-get install -y make libpcap-dev bridge-utils uml-utilities
RUN make 
CMD ./BIN/vax
