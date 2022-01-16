#!/usr/bin/env sh

FILENAME=$1

export PATH=$PATH:$(dirname $(find /usr/local/texlive/ -name "tlmgr"))

cp -R ~/* /mystyle.sty /tmp/

cd /tmp
ptex2pdf -u -l $FILENAME > /dev/null
ptex2pdf -u -l $FILENAME | tail

rm -f ~/$FILENAME.pdf ~/$FILENAME.log
cp -f /tmp/$FILENAME.pdf /tmp/$FILENAME.log ~/
