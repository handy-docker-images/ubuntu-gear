FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
	zsh \
    git \
    curl \
	vim \
    iproute2 \
    iputils-ping \
    net-tools && \
    useradd -m -s $(which zsh) ubuntu && \
    rm -rf /var/lib/apt/lists/*

USER ubuntu
WORKDIR /home/ubuntu

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN /bin/bash -c "$(curl -fsSL https://git.io/JDlEZ)"

ENTRYPOINT ["zsh"]
