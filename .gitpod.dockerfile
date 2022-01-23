# Fetch Ubuntu Latest
FROM gitpod/workspace-full:latest

# Root
USER root

# Start
RUN echo Welcome to xyz Workspace Zone

# Dependency
RUN apt update && apt upgrade -y
RUN sudo apt install openssh-server screen python git  bc bison \
build-essential curl  g++-multilib gcc-multilib  lib32ncurses-dev \
lib32z1-dev  liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev \
libxml2 libxml2-utils lzop pngcrush rsync  yasm zip zlib1g-dev \
libtinfo5 libncurses5 neofetch -y

cp ./repo ~/bin/repo
chmod a+x ~/bin/repo

mkdir rom

cd rom

git config --global username "lol"
git config --global user.email "lollol@gmail.com"

repo init -u https://github.com/Fusion-OS/android_manifest -b twelve
repo sync --current-branch --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j$(nproc --all)

