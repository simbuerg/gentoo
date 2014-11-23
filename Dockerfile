FROM pigfoot/gentoo-base:latest
MAINTAINER Andreas Simbürger <simbuerg@gmail.com>
ADD etc/ /etc
RUN emerge -q distcc clang
ADD make.conf /etc/portage/make.conf
