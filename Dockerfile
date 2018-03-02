FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y ninja-build
RUN dnf install -y cmake
RUN dnf install -y wget bzip2 ca-certificates

# install pre-reqs
RUN dnf install -y gcc-gfortran
RUN dnf install -y boost-devel
RUN dnf install -y rsync
RUN dnf install -y xorg-x11-xauth xterm
RUN dnf install -y libicu
RUN dnf install -y wget
RUN dnf install -y libjpeg
RUN dnf install -y make
RUN dnf install -y mesa-libGL
RUN dnf install -y libXi
RUN dnf install -y libXcursor
RUN dnf install -y libXcomposite
RUN dnf install -y glibc-devel.x86_64
RUN dnf install -y libXtst
RUN dnf install -y libxslt
RUN dnf install -y bzip2
RUN dnf install -y alsa-lib.x86_64
RUN dnf install -y zlib-devel.x86_64

# install libicu binaries
RUN wget http://download.icu-project.org/files/icu4c/52.1/icu4c-52_1-RHEL6-x64.tgz
RUN tar -xvf icu4c-52_1-RHEL6-x64.tgz -C /

# install libpng16
RUN wget https://sourceforge.net/projects/libpng/files/libpng16/1.6.34/libpng-1.6.34.tar.xz/download
RUN tar -xvf download
RUN ./libpng-1.6.34/configure
RUN make install

RUN mkdir -p /workspace/ISIS3_cmake && mkdir -p /workspace/ISIS3_cmake@tmp

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
