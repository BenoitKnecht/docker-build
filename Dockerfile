FROM debian:stable

RUN apt-get update && apt-get install -y \
        bison \
        build-essential \
        curl \
        flex \
        git \
        liblzma-dev \
        libncurses5-dev \
        python \
        vim \
        wget \
        zlib1g-dev \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN adduser --shell /bin/bash --uid 1000 builder

USER builder
WORKDIR /home/builder

ENTRYPOINT ["/bin/bash"]
