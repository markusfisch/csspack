#!/bin/sh

# works only with GNU sed, not BSD/OSX sed
sed -r -e :a -e "$!N;
# remove comments
s¦/\*[^*]*\*+([^/][^*]*\*+)*/¦¦;
# remove newlines and white space at the beginning and at the end of lines
s/[\t ]*[\r\n]+[\t ]*//;
# condense tabs and blanks
s/[\t ]+/ /;
# remove unnecessary blanks
s/[ ]+\{/{/;
s/([:\(\{,;])[ ]+/\1/;
s/[ ]+([\)\}])/\1/;
ta"
