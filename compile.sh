#!/bin/sh

#crude

mkdir -p ./classes

echo "compiling `find ./src/ch/lowres/jlo/*.java | wc -l` java files (main)..."
javac -source 1.6 -target 1.6 -cp .:./lib/jna-3.3.0.jar src/ch/lowres/jlo/*.java -d classes

echo "compiling `find ./src/ch/lowres/jlo/test/*.java | wc -l` java files (test)..."
javac -source 1.6 -target 1.6 -cp .:./classes/:./lib/jna-3.3.0.jar src/ch/lowres/jlo/test/*.java -d classes
