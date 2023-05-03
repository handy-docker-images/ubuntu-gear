FROM ubuntu:latest

ENV TZ Australia/Adelaide
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN sed -i 's#http://archive.ubuntu.com/ubuntu/#http://mirror.internode.on.net/pub/ubuntu/ubuntu/#g' /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    vim \
    sudo \
    iproute2 \
    iputils-ping \
    net-tools && \
    useradd -m -s $(which bash) ubuntu && \
    rm -rf /var/lib/apt/lists/*


RUN echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ubuntu
USER ubuntu
WORKDIR /home/ubuntu

RUN /bin/bash -c "$(curl -fsSL https://git.io/JDlEZ)"

CMD ["bash"]
