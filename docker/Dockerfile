FROM ubuntu:22.04

### Install the following dependenices in the docker image
# 
# curl iproute2 sshfs unzip less groff 
# Install kubectl from https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl
#
# Install AWS CLI from https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
# 
# Install the above tools, unpack and make it available in the PATH executable
###
# Installing dependent packages
RUN apt-get update && \
    apt-get install -y curl iproute2 sshfs unzip less groff && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
# Installing kubectl and moving executable to path
RUN curl -LO "https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/

# Installing AWS CLI and moving executable to path
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -f awscliv2.zip && \
    rm -rf aws

# Default command for the container to be a Bash shell
CMD [ "bash" ]
