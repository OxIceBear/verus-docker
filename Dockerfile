FROM debian:stable
RUN apt-get update && apt-get -y install wget vim libsodium-dev
WORKDIR /home
RUN wget https://github.com/hellcatz/hminer/releases/download/v0.58/hellminer_linux64.tar.gz
RUN gunzip hellminer_linux64.tar.gz
RUN tar -xvf hellminer_linux64.tar
RUN echo "#!/bin/bash\n\n./hellminer -c stratum+tcp://pool.verus.io:9999 -u RMBvJfUV3LjcujvVBwM844cywmzPECVxC4 -p pwd --cpu 8" > mine.sh
