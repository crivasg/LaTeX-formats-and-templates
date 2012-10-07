#!/bin/ksh

TMP_FILE='/tmp/latex_figures.tmp'

find . \( -wholename "*figures/*.tex" -not -name *_* \) -type f > $TMP_FILE


while read line
	do
		echo "Building " $line " ...";	
	done < ${TMP_FILE}


