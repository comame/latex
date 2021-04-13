#!/usr/bin/env sh

FILENAME=$1

export PATH=$PATH:/usr/local/texlive/$(date +%Y)/bin/x86_64-linuxmusl

cp -R ~/* /mystyle.sty /tmp/
cd /tmp
ptex2pdf -u -l $FILENAME > /dev/null
ptex2pdf -u -l $FILENAME | tail
cp /tmp/$FILENAME.pdf /tmp/$FILENAME.log ~/
