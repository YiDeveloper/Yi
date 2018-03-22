#!/bin/bash
# create multiresolution windows icon
ICON_DST=../../src/qt/res/icons/yicoin.ico

convert ../../src/qt/res/icons/yicoin-16.png ../../src/qt/res/icons/yicoin-80.png ${ICON_DST}
