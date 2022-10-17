#!/usr/bin/env bash

# =====[  this needs to be your mystic dir path  ]===========
MYSTICDIR="/mystic"
# =====[ this is the only var to you need to set ]===========

###########[ DO NOT CHANGE BELOW THIS LINE ]#################

P=$(pwd)
ARCH="$(uname -m)"
DATADIR="${MYSTICDIR}/data"
THEMESDIR="${MYSTICDIR}/themes/default"
SCRIPTSDIR="${THEMESDIR}/scripts"
TEXTDIR="${THEMESDIR}/text"

doArm() {
  echo "Running on ARM"
  F=$(find scripts/ -name "*arm*.mpx")
  if [ $F ]; then
    echo "found $F"
    echo "ln -sf $P/$F ${SCRIPTSDIR}/mrcx-beta.mpx"
  fi
}
doAmd64() {
  echo "Running on x86"
  F=$(find scripts/ -name "*amd64*.mpx")
  if [ $F ]; then
    echo "found $F"
    echo "ln -sf $P/$F ${SCRIPTSDIR}/mrcx-beta.mpx"
  fi
}
doUnknown() {
  echo "Unknown architecture $ARCH found. Aborting."
  exit 1
}
doLinkTexts() {
  echo "ln -sf $P/text/* ${TEXTDIR}/"
}
doCheckDat() {
  F="${DATADIR}/mrcxusrs.dat"
  if [ $F ]; then
    echo -n "Found mrcX users datafile, Delete this? (recommended): "; read RESPONSE
    case $RESPONSE in
      [yY]|[yY][eE][sS])	rm $F; echo "Deleted $F";;
      *)			echo "Leaving users datafile in-tact, expect weirdness!";;
    esac
}

case $ARCH in
  "aarch32")	doArm;;
  "aarch64")	doArm;;
  "x86_64")	doAmd64;;
  *)		doUnknown;;
esac

doLinkTexts
doCheckDat
