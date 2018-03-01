FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y ninja-build
RUN dnf install -y cmake

RUN dnf install -y xorg-x11-xauth xterm
RUN dnf install -y libicu
RUN dnf install -y libpcre16

RUN mkdir -p /workspace/ISIS3_cmake && mkdir -p /workspace/ISIS3_cmake@tmp

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
