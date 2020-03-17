FROM ubuntu

RUN apt update
RUN apt install -y \
        unzip \
        curl \
        sudo

WORKDIR /app
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install

VOLUME /root/.aws
VOLUME /project
WORKDIR /project

ENTRYPOINT ["/usr/local/bin/aws"]