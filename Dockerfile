FROM gitpod/workspace-full

LABEL maintainer "Oktapra Amtono <oktapra.amtono@gmail.com>"

USER root

ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN sudo apt-get update -y \
    && sudo apt-get upgrade -y \
    && sudo apt-get dist-upgrade -y \
    && sudo apt-get install -y \
    autoconf \
    autogen \
    automake \
    autotools-dev \
    apt-utils \
    bc \
    binutils \
    binutils-arm-linux-gnueabi \
    binutils-aarch64-linux-gnu \
    bison \
    build-essential \
    ca-certificates \
    ccache \
    clang \
    clangd \
    coreutils \
    cmake \
    cpio \
    curl \
    file \
    flex \
    g++ \
    gcc \
    gcc-arm-linux-gnueabi \
    gcc-aarch64-linux-gnu \
    git \
    lftp \
    lib32ncurses5-dev \
    libcurl4-gnutls-dev \
    lib32z1-dev \
    lib32z-dev \
    libc6-dev \
    libc6-dev-i386 \
    libcap-dev \
    libelf-dev \
    libexpat1-dev \
    libffi-dev \
    libgl1-mesa-dev \
    libmpc-dev \
    libmpfr-dev \
    libncurses5-dev \
    libxml2 \
    libxml2-dev \
    libtinfo5 \
    libssl-dev \
    libstdc++6 \
    lld \
    llvm \
    llvm-dev \
    jq \
    make \
    ninja-build \
    openssl \
    openjdk-8-jdk \
    pkg-config \
    python3 \
    rclone \
    rsync \
    ssh \
    subversion \
    squashfs-tools \
    tar \
    texinfo \
    tmate \
    tzdata \
    u-boot-tools \
    unzip \
    unrar \
    wget \
    x11proto-core-dev \
    xsltproc \
    xz-utils \
    zip \
    zlib1g-dev \
    zstd

RUN sudo apt-get update -y \
    && sudo apt-get upgrade -y \
    && sudo apt-get dist-upgrade -y \
    && sudo apt-get autoclean \
    && sudo apt-get autoremove

RUN sudo rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
