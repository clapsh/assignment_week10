From ubuntu:latest

RUN apt-get update
RUN apt-get install -y git
RUN apt-get update
RUN apt-get install -y python3
USER 0
RUN mkdir A && mkdir B && mkdir C && mkdir files
WORKDIR /files
RUN touch a.txt
RUN touch b.txt
RUN touch c.txt
WORKDIR /
RUN git clone https://github.com/clapsh/git_advanced_1.git