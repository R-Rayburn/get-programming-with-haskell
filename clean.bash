#!bin/sh
FOLDERS=$(ls -d -- */)
CURR_DIR=$(pwd)
for FOLDER in $FOLDERS
do
    cd $FOLDER
    echo $(pwd)
    FILES=$(ls *.o *.hi *~ \\#*\\# 2>/dev/null)
    for F in $FILES
    do
	echo Removing $F
	rm -f $F
    done
    cd $CURR_DIR
done
EXECUTABLES=$(find . -perm +111 -type f)
for E in $EXECUTABLES
do
    echo Removing $E
    rm -f $E
done
echo $(pwd)
FILES=$(ls *~ \\#*\\# 2>/dev/null)
for F in $FILES
do
    echo Removing $F
    rm -f $F
done
echo "Cleaning complete"
