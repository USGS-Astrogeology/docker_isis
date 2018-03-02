FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y ninja-build
RUN dnf install -y cmake
RUN dnf install -y wget bzip2 ca-certificates

RUN dnf install -y xorg-x11-xauth xterm
# RUN dnf install -y libpcre16

# install libicu binaries
RUN wget http://download.icu-project.org/files/icu4c/52.1/icu4c-52_1-RHEL6-x64.tgz
RUN tar -xvf icu4c-52_1-RHEL6-x64.tgz -C /

RUN mkdir -p /workspace/ISIS3_cmake && mkdir -p /workspace/ISIS3_cmake@tmp

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
