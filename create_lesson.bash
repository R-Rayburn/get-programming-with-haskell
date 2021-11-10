#!/bin/sh
echo "Give a lesson number to create"
read LESSON_NO
NEW_DIR="lesson_"$LESSON_NO
ORIG_DIR=$(pwd)
[[ -d $NEW_DIR ]] && echo $NEW_DIR alread exists, closing && exit
mkdir $NEW_DIR
cd $NEW_DIR
pwd
echo "What is the lesson Title?"
read LESSON_TITLE
echo "#"$LESSON_TITLE > README.md
ls
cat README.md
cd $ORIG_DIR
echo "End Program"
