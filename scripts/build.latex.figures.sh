#!/bin/ksh

TMP_FILE='/tmp/latex_figures.tmp'
LATEX='latex -interaction=batchmode'
DVIPDF='dvipdf'

find . \( -wholename "*figures/*.tex" -not -name *_* \) -type f > $TMP_FILE


while read line
	do
		DVI=`echo $line | sed 's/.tex/.dvi/'`
		PDF=`echo $line | sed 's/.tex/.pdf/'`
		echo "Building " $line  $DVI " ...";
	#	${LATEX} $line	
	#	${LATEX} $line
	#	${DVIPDF} $DVI $PDF
		
	done < ${TMP_FILE}


