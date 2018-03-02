FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y ninja-build
RUN dnf install -y cmake
RUN dnf install -y wget bzip2 ca-certificates

RUN dnf install -y xorg-x11-xauth xterm
RUN dnf install -y libicu

RUN wget https://rpmfind.net/linux/opensuse/ports/update/leap/42.3/oss/aarch64/libpcre16-0-8.39-11.1.aarch64.rpm
RUN rpm libpcre16

RUN mkdir -p /workspace/ISIS3_cmake && mkdir -p /workspace/ISIS3_cmake@tmp

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
