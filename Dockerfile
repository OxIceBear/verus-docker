FROM debian:stable
RUN apt-get update && apt-get -y install wget vim libsodium-dev
WORKDIR /home
RUN wget https://github.com/hellcatz/hminer/releases/download/v0.56.1/hellminer_linux64_avx2.tar.gz
RUN gunzip hellminer_linux64_avx2.tar.gz
RUN tar -xvf hellminer_linux64_avx2.tar
RUN echo "#!/bin/bash\n\n./hellminer -c stratum+tcp://pool.verus.io:9999 -u iNAfHikcAMwQjrfLbvyEn2hVkPRk4VpHAk.dogracerVerusDocker -p x --cpu $(nproc)\n" > mine.sh
