FROM ubuntu:22.04

# COPY MODULA2_* /tmp/
RUN apt-get update && \
    apt-get install -y gm2 coreutils && \
    apt clean && \
    rm -rf /var/apt/lib/lists/*

WORKDIR /var/myapp

COPY watch-compile.sh .

RUN chmod u+x watch-compile.sh

RUN ls -al

CMD ["/var/myapp/watch-compile.sh"]
