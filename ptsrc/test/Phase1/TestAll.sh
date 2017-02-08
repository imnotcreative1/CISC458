#!/bin/bash
for i in `find ./TestFiles -name *.pt` 
do
  echo "--------------------------------"
  echo "Processing $i file..."
  # take action on each file. $f store current file name
  cat $i
  echo "Output tokens"
  ssltrace "ptc -o1 -t1 -L ../../lib/pt $i" ~/cisc458/ptsrc/parser/scan.def -e
  ssltrace "ptc -o1 -t1 -L ../../lib/pt $i" ~/cisc458/ptsrc/parser/scan.def -i
done
