FROM alpine:edge

# Definindo o email como variável de ambiente
ARG EMAIL="isaias.pereira@protonmail.com"

# Instalação de pacotes necessários
RUN apk add --update \
    git \
    lazygit \
    neovim \
    ripgrep \
    alpine-sdk \
    python3 \
    python3-dev \
    py3-pip \
    rust \
    go \
    tmux \
    openssh \
    zsh \
    sudo

# Criação de usuário dev com sudo
RUN adduser -D dev && \
    echo "dev ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

COPY installer.sh /home/dev/installer.sh

# Configuração do ambiente
USER dev
WORKDIR /home/dev

# Geração de chaves SSH
RUN ssh-keygen -q -t ed25519 -C "$EMAIL" -N '' -f ~/.ssh/id_ed25519 && \
    cat ~/.ssh/id_ed25519.pub >> ~/.ssh/authorized_keys

# Clone do repositório do LazyVim e configuração do NeoVim
COPY init.lua ~/.config/nvim/init.lua

