FROM jupyter/minimal-notebook

ARG NB_USER="joyvan"

USER root

RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    apt-utils \
    software-properties-common \
    apt-transport-https

RUN add-apt-repository universe && \
    apt-get update && \ 
    apt-get install -y --no-install-recommends dotnet-sdk-3.0

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

RUN dotnet tool install -g dotnet-try

ENV PATH="~/.dotnet/tools:${PATH}"

RUN dotnet try jupyter install

CMD jupyter lab