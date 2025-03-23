FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    libffi-dev \
    libyaml-dev \
    autoconf \
    bison \
    libgdbm-dev \
    libncurses5-dev \
    libtool \
    libsqlite3-dev \
    sqlite3 \
    libgmp-dev \
    libgdbm-compat-dev \
    libdb-dev \
    && apt-get clean

RUN git clone https://github.com/rbenv/rbenv.git /root/.rbenv && \
    echo 'export PATH="/root/.rbenv/bin:$PATH"' >> /root/.bashrc && \
    echo 'eval "$(rbenv init -)"' >> /root/.bashrc && \
    git clone https://github.com/rbenv/ruby-build.git /root/.rbenv/plugins/ruby-build && \
    echo 'export PATH="/root/.rbenv/plugins/ruby-build/bin:$PATH"' >> /root/.bashrc

ENV PATH="/root/.rbenv/bin:/root/.rbenv/shims:/root/.rbenv/plugins/ruby-build/bin:$PATH"
ENV RBENV_ROOT="/root/.rbenv"

RUN rbenv install 2.4.0 && rbenv global 2.4.0

RUN gem install rspec -v 3.6.0 && rbenv rehash

# Cria o diretório para o projeto e ajusta as permissões
RUN mkdir -p /tdd-ruby && chown -R root:root /tdd-ruby

WORKDIR /tdd-ruby

CMD ["/bin/bash"]
