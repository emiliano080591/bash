#!/bin/bash

# This script extracts the audio from
# the mp4 file and converts it to mono

INPUT_FILE=$1
BASE_DIR=$(dirname $INPUT_FILE)
BASE_NAME=$(basename -s .mp4 $INPUT_FILE)
TMP_FILE=$(mktemp --suffix=.wav)
OUT_FILE="$BASE_DIR/$BASE_NAME.wav"

# Extract the audio
avconv -y -i $INPUT_FILE $TMP_FILE


sox $TMP_FILE -c 1 $OUT_FILE

screen.

echo

echo $OUT_FILE