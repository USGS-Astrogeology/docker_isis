FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y ninja-build
RUN dnf install -y cmake
RUN dnf install -y wget bzip2 ca-certificates

RUN dnf install -y xorg-x11-xauth xterm
RUN dnf install -y libicu

RUN wget http://dl.fedoraproject.org/pub/fedora/linux/updates/25/x86_64/Packages/p/pcre-utf16-8.41-3.fc25.x86_64.rpm
RUN rpm -ivh pcre-utf16-8.41-3.fc25.x86_64.rpm

RUN mkdir -p /workspace/ISIS3_cmake && mkdir -p /workspace/ISIS3_cmake@tmp

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
