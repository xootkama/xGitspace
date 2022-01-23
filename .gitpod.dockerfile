# Fetch Ubuntu Latest
FROM fr3akyphantom/droid-builder:focal

# Root
USER root

# Start
RUN echo Welcome to xyz Workspace Zone

# Dependency
RUN apt update && apt upgrade -y
RUN sudo apt install openssh-server screen python git  bc bison \
build-essential curl  g++-multilib gcc-multilib  lib32ncurses-dev \
lib32z1-dev  liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev \
libxml2 libxml2-utils lzop pngcrush rsync  yasm zip  zlib1g-dev \
libtinfo5 libncurses5 neofetch -y


RUN mkdir rom

RUN cd rom

RUN git init


RUN repo init -u https://github.com/Fusion-OS/android_manifest -b twelve


