FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
	vim \
    iproute2 \
    iputils-ping \
    net-tools && \
    useradd -m -s $(which bash) ubuntu && \
    rm -rf /var/lib/apt/lists/*

USER ubuntu

RUN /bin/bash -c "$(curl -fsSL https://git.io/JDlEZ)"

ENTRYPOINT ["bash"]
