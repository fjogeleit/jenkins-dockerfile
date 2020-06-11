FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y apt-utils zsh rsync make g++ \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh \
    && bash nodesource_setup.sh \
    && apt install nodejs

USER jenkins