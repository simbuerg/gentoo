FROM pigfoot/gentoo-base:latest
MAINTAINER Andreas Simbürger <simbuerg@gmail.com>


# Prepare image for distcc build
ADD etc/ /etc
RUN emerge -q distcc
ADD hosts /etc/distcc/hosts

# Install llvm & clang
RUN emerge -q llvm clang

# Use clang / llvm in build
ADD make.conf /etc/portage/make.conf
