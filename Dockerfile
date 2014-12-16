FROM pigfoot/gentoo-base:latest
MAINTAINER Andreas Simbürger <simbuerg@gmail.com>


# Prepare image for distcc build
ADD etc/ /etc
RUN emerge -q distcc
ADD hosts /etc/distcc/hosts

RUN lsdistcc -px86_64-pc-linux-gnu-g++ -l debussy wagner

# Install llvm & clang
RUN pump emerge llvm clang

# Use clang / llvm in build
ADD make.conf /etc/portage/make.conf
