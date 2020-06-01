#!/usr/bin/env sh

FILENAME=$1

cp -R ~/* /mystyle.sty /tmp/
cd /tmp
ptex2pdf -u -l $FILENAME > /dev/null
ptex2pdf -u -l $FILENAME | tail
cp /tmp/$FILENAME.pdf /tmp/$FILENAME.log ~/
