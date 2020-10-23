FROM gitpod/workspace-full:latest

# Use root user
USER root
RUN echo "Set disable_coredump false" >> /etc/sudo.conf
RUN apt-get update && apt-get install -y \
    && sudo add-apt-repository ppa:deadsnakes/ppa \
    && sudo apt-get install -y software-properties-common \
    && sudo apt update \
    && sudo apt-get upgrade -y \
    # Clean-up
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

RUN echo "\n\n ECHO POINT \n\n"

### Python ###
RUN sudo apt update -y \
    && sudo apt-get install -y python3.9
    
    



