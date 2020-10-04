FROM ubuntu:20.04
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install git g++ make build-essential libsndfile1-dev \
                       jackd2 portaudio19-dev default-jre-headless \
                       libjack-jackd2-dev dpkg-dev lsb-release \
                       wget libxml++2.6-dev \
                       liblo-dev libltc-dev libasound2-dev \
                       libgtkmm-3.0-dev libcairomm-1.0-dev \
                       libfftw3-dev libfftw3-single3 libfftw3-double3 \
                       libcurl4-openssl-dev libwebkit2gtk-4.0-dev \
                       libgtksourceviewmm-3.0-dev imagemagick libmatio-dev \
                       texlive-latex-recommended vim-common \
                       texlive-latex-extra doxygen \
                       texlive-font-utils graphviz texlive-fonts-recommended \
                       libopencv-dev rsync libboost-all-dev libeigen3-dev \
                       gnupg1 libgsl-dev libsamplerate0-dev && \
    apt-key adv --keyserver keyserver.ubuntu.com \
                --recv-keys B7D6CDF547DA4ABD && \
    echo 'deb http://apt.hoertech.de focal universe' \
          >>/etc/apt/sources.list && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install lsl-liblsl libopenmha-dev openmha mhamakedeb && \
    git config --global user.email "noreply@orlandoviols.com" && \
    git config --global user.name "docker"
