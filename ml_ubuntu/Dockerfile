FROM ubuntu:focal
RUN apt-get update
RUN apt-get install -y python3 python3-pip git protobuf-compiler
COPY ./requerements.txt /home/requerements.txt
COPY ./install.sh /home/install.sh
RUN /home/install.sh