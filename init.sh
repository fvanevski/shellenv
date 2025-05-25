#!/bin/bash
apt-get update
apt-get install -y \
      git zsh sudo curl build-essential ffmpeg && \
    rm -rf /var/lib/apt/lists/*

usermod --shell /usr/bin/zsh root

echo "ubuntu ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ubuntu && \
    chmod 0440 /etc/sudoers.d/ubuntu

curl -LsSf https://astral.sh/uv/install.sh | sh

cp -r ./root/ /
