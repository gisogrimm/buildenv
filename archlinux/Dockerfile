FROM archlinux

RUN pacman --noconfirm -Syu git make gcc pkg-config libxml++2.6 jack2 liblo libsndfile fftw gsl eigen gtkmm3 boost libltc xxd gtksourceviewmm webkit2gtk

RUN mkdir /build
RUN cd /build && git clone https://github.com/gisogrimm/ov-client

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
