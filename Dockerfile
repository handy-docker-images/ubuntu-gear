FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y vim iproute2 iputils-ping net-tools && \
    rm -rf /var/lib/apt/lists/*
RUN /bin/bash -c "$(curl -fsSL https://git.io/JDlEZ)"

CMD ["/bin/bash"]
