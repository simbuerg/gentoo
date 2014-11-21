FROM pigfoot/gentoo-base:latest
MAINTAINER Andreas Simbürger <simbuerg@gmail.com>
ADD clang.use /etc/portage/package.use
RUN emerge -q distcc clang
ADD distcc.hosts /etc/distcc/hosts
ADD make.conf /etc/portage/make.conf
