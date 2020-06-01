FROM alpine

WORKDIR /root

RUN apk update && apk add \
    curl \
    tar \
    perl \
    xz
RUN curl http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz -o tex-live.tar.gz
RUN tar xzf tex-live.tar.gz

RUN printf "%s\n" \
    "selected_scheme scheme-basic" \
    "tlpdbopt_install_docfiles 0" \
    "tlpdbopt_install_srcfiles 0" \
    > texlive.profile

RUN $(find ./ -name "install-tl*" -type d)/install-tl -profile ~/texlive.profile

ENV PATH $PATH:/usr/local/texlive/2020/bin/x86_64-linuxmusl

RUN tlmgr install \
    collection-latexrecommended \
    collection-fontsrecommended \
    collection-langjapanese \
    lastpage \
    titlesec \
    multirow

COPY entrypoint.sh /entrypoint.sh
COPY mystyle.sty /mystyle.sty

RUN rm -rf ~/* \
    && adduser -D user \
    && chmod +x /entrypoint.sh

USER user

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "doc" ]
VOLUME /home/user
