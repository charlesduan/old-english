#!/bin/sh

FONT=old-english-regular

mf $FONT && gftodvi $FONT.2602gf && \
    dvipdf $FONT

mf2pt1 $FONT

./convert.pe $FONT.pfb

rm $FONT.2602gf $FONT.dvi $FONT.pfb $FONT.afm $FONT.log $FONT.tfm
