all: pdflatex

pdflatex:
	pdflatex -interaction=batchmode $(FILENAME).tex
	
zip:
	find . \( -name "*.tex" -or -name "*.bib" -or -name "*.sty" \) -type f | xargs zip -u ../$(ZIPNAME).zip

clean:
	rm *.aux *.blg *.lof *.out *.bbl *.loa *.log *.toc
	find . \( -name "*.aux" -or -name "*.log" -or -name "*.dvi" \) -type f -exec rm {} \;