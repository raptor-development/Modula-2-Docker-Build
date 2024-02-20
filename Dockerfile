FROM ubuntu:22.04

# COPY MODULA2_* /tmp/
RUN apt-get update && \
    apt-get install -y gm2 coreutils && \
    apt clean && \
    rm -rf /var/apt/lib/lists/*

COPY watch-compile.sh .

CMD ["watch-compile.sh"]
