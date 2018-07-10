FROM fedora:25

RUN dnf install -y gcc-c++
RUN dnf install -y wget bzip2 ca-certificates

RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh && \
    wget --quiet https://repo.continuum.io/miniconda/Miniconda3-4.3.27-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh 

ENV PATH /opt/conda/bin:$PATH
ENV PATH /opt/conda/envs/isisdeps/bin:$PATH

RUN mkdir -p /workspace/ISIS3_cmake /workspace/ISIS3_cmake@tmp ./build ./install

ENTRYPOINT [ "/bin/bash", "-c", "--" ]
