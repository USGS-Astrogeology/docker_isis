FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y ninja-build
RUN dnf install -y cmake
RUN dnf install -y wget bzip2 ca-certificates

RUN dnf install -y xorg-x11-xauth xterm
RUN dnf install -y libicu

RUN wget https://rpmfind.net/linux/mageia/distrib/cauldron/x86_64/media/core/release/lib64pcre16_0-8.41-3.mga7.x86_64.rpm
RUN rpm libpcre16_0

RUN mkdir -p /workspace/ISIS3_cmake && mkdir -p /workspace/ISIS3_cmake@tmp

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
