#!/bin/bash

SAMPLES_DIR="$(realpath "$(dirname ${BASH_SOURCE[0]})")/../samples"

CHATBOT_DIR=$SAMPLES_DIR/chatbot/
CODEGEN_DIR=$SAMPLES_DIR/codegen/
AUDIO_TO_TEXT_DIR=$SAMPLES_DIR/audio-to-text/
OBJECTION_DETECTION_DIR=$SAMPLES_DIR/object-detection/
RAG_DIR=$SAMPLES_DIR/rag/

REPO="https://github.com/containers/ai-lab-recipes"

TEMPDIR=$SAMPLES_DIR/temp
rm -rf $TEMPDIR # clean up
mkdir -p $TEMPDIR
cd $TEMPDIR
git clone $REPO 2>&1 > /dev/null

REPONAME=$(basename $REPO)

mkdir -p \
    $CHATBOT_DIR \
    $CODEGEN_DIR \
    $AUDIO_TO_TEXT_DIR \
    $OBJECTION_DETECTION_DIR \
    $RAG_DIR

cp -r $TEMPDIR/$REPONAME/recipes/natural_language_processing/chatbot/app/* $CHATBOT_DIR
cp -r $TEMPDIR/$REPONAME/recipes/natural_language_processing/codegen/app/* $CODEGEN_DIR
cp -r $TEMPDIR/$REPONAME/recipes/audio/audio_to_text/app/* $AUDIO_TO_TEXT_DIR
cp -r $TEMPDIR/$REPONAME/recipes/computer_vision/object_detection/app/* $OBJECTION_DETECTION_DIR
cp -r $TEMPDIR/$REPONAME/recipes/natural_language_processing/rag/app/* $RAG_DIR

rm -rf $TEMPDIR # clean up