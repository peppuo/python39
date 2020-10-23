FROM gitpod/workspace-full:latest

# Use root user
USER root
# RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update && apt-get install -y \
    && sudo add-apt-repository ppa:deadsnakes/ppa \
    && sudo apt update \
    # Clean-up
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

### Python ###
RUN sudo apt update \
    && sudo apt install software-properties-common \
    && sudo add-apt-repository ppa:deadsnakes/ppa \
    && sudo apt update \
    && sudo apt install python3.9



