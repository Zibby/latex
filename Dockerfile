From debian
ENV DEBIAN_FRONTEND noninteractive


RUN apt update && \
  apt upgrade -yf &&\
  apt install -yf --no-install-recommends wget \
  texlive-xetex \
  texlive-science \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-bibtex-extra \
  texlive-latex-extra \
  fonts-font-awesome \
  texlive-fonts-extra \
  xzdec \
  make

RUN apt autoclean
RUN apt --purge autoremove
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp*

WORKDIR /data
VOLUME ["/data"]
