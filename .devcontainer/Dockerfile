# Use Ubuntu base image or compatible
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install PowerShell
RUN apt-get update && \
    apt-get install -y wget apt-transport-https software-properties-common && \
    wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb" && \
    dpkg -i packages-microsoft-prod.deb && \
    apt-get update && \
    apt-get install -y powershell && \
    apt-get clean

# Optional: set PowerShell as default shell
ENV SHELL=/usr/bin/pwsh