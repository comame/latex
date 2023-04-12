#!/usr/bin/env sh

FILENAME=$1

export PATH=$PATH:$(dirname $(find /usr/local/texlive/ -name "tlmgr"))

cp -R /home/user/* /mystyle.sty /tmp/

cd /tmp
ptex2pdf -u -l $FILENAME > /dev/null
ptex2pdf -u -l $FILENAME | tail

rm -f /home/user/$FILENAME.pdf /home/user/$FILENAME.log
cp -f /tmp/$FILENAME.pdf /tmp/$FILENAME.log /home/user/
