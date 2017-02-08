#!/bin/sh 

diff ../ptsrc/parser/scan.ssl ../../cisc458_original/ptsrc/parser/scan.ssl > scanDiff.txt 

diff ../ptsrc/parser/stdIdentifiers ../../cisc458_original/ptsrc/parser/stdIdentifiers > stdIdentifiersDiff.txt

diff ../ptsrc/parser/parser.pt ../../cisc458_original/ptsrc/parser/parser.pt > parserPtDiff.txt
