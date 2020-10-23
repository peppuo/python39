FROM gitpod/workspace-full:latest

# Use root user
USER root
RUN apt-get update && apt-get install -y \
    # Clean-up
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*

### Python ###
ENV PATH=$HOME/.pyenv/bin:$HOME/.pyenv/shims:$PATH
RUN sudo curl -fsSL https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash \
    && { echo; \
        echo 'eval "$(pyenv init -)"'; \
        echo 'eval "$(pyenv virtualenv-init -)"'; } >> .bashrc \
    && pyenv install 3.9 \
    && pyenv global 3.9 \
    && pip install virtualenv pipenv python-language-server[all]==0.19.0 \
    && rm -rf /tmp/*

