#!/bin/bash
Directory="/cas/student/cisc458j/cisc458/ptsrc/TestSuite"
testDir=""
for i in `find $Directory -name *.pt` 
do
  testDir="$(dirname "$i")"
  echo "--------------------------------"
  echo "Processing $testDir ..."
  # take action on each file. $f store current file name
  ssltrace "ptc -o1 -t1 -L /cas/student/cisc458j/cisc458/ptsrc/lib/pt $i" ~/cisc458/ptsrc/parser/scan.def -e > $testDir/eOutput
  ssltrace "ptc -o1 -t1 -L /cas/student/cisc458j/cisc458/ptsrc/lib/pt $i" ~/cisc458/ptsrc/parser/scan.def -i > $testDir/iOutput
done
