#!/bin/ksh

TMP_FILE='/tmp/latex_figures.tmp'

find . \( -wholename "*figures/*.tex" -not -name *_* \) -type f > $TMP_FILE

echo $TMP_FILE
