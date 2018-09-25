#!/bin/bash

source ${XRAY_GENHEADER}
TIMFUZ_DIR=$XRAY_DIR/fuzzers/007-timing

timing_txt2csv () {
    python3 $TIMFUZ_DIR/timing_txt2icsv.py --speed-json $TIMFUZ_DIR/speed/build/speed.json --out timing4i.csv.tmp timing4.txt
    mv timing4i.csv.tmp timing4i.csv
}

