FROM ubuntu

WORKDIR /root

ARG mirror="http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/"

RUN apt update && apt upgrade -y && apt install -y \
    curl \
    tar \
    perl \
    libfontconfig
RUN curl ${mirror}/install-tl-unx.tar.gz -o tex-live.tar.gz \
    && tar xzf tex-live.tar.gz
RUN printf "%s\n" \
        "selected_scheme scheme-basic" \
        "tlpdbopt_install_docfiles 0" \
        "tlpdbopt_install_srcfiles 0" \
        > texlive.profile
RUN $(find ./ -name "install-tl*" -type d)/install-tl -profile ~/texlive.profile -repository ${mirror}; exit 0

RUN $(find /usr/local/texlive/ -name "tlmgr") -repository ${mirror} install \
    collection-latexrecommended \
    collection-fontsrecommended \
    collection-langjapanese \
    lastpage \
    titlesec \
    multirow \
    sourcecodepro \
    ly1 \
    newtx \
    xstring \
    fontaxes \
    ; exit 0

COPY msmincho.ttc /usr/local/texlive/texmf-local/fonts/truetype/msmincho.ttc
COPY msgothic.ttc /usr/local/texlive/texmf-local/fonts/truetype/msgothic.ttc
RUN $(find /usr/local/texlive/ -name "mktexlsr" | head -n 1)

COPY entrypoint.sh /entrypoint.sh
COPY mystyle.sty /mystyle.sty

RUN useradd -m user
RUN chmod +x /entrypoint.sh

USER user
WORKDIR /home/user

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "doc" ]
VOLUME /home/user
