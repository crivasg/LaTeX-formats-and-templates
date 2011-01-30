TEXSRC := $(shell egrep -l '^[^%]*\\begin\{document\}' *.tex)
PDFLATEX = pdflatex -interaction=batchmode

BIBTMP :=  $(shell find . -name "*.bib" -type f)
BIBSRC := $(BIBTMP:./%=%)
BIBDIR :=  $(dir $(BIBSRC))
BIBFILE := $(basename $(notdir $(BIBSRC)))
BIBCMD = bibtex --include-directory=$(BIBDIR)

ZIPNAME = "backup".`date +'%y.%m.%d'`

all: pdflatex

pdflatex:
	$(PDFLATEX) $(TEXSRC)
	
full-build:
	$(LATEXCMD) $(TEXSRC)
	$(BIBCMD) $(BIBFILE)
	$(LATEXCMD) $(TEXSRC)
	$(LATEXCMD) $(TEXSRC)
	
zip:
	@echo "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *" 
	@echo "Shame on you for not using a SCM system as git or svn and keep working with zip files for backups"
	@echo "and revision control purposes. But wait, zips are needed in some cases, as for sending the files" 
	@echo "via email\n"
	@echo "OUTPUT FILE: $(ZIPNAME).zip"
	find . \( -name "*.tex" -or -name "*.bib" -or -name "*.sty" \) -type f | xargs zip -u ../$(ZIPNAME).zip
	@echo "* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *\n"

clean:
	rm *.aux *.blg *.lof *.out *.bbl *.loa *.log *.toc
	find . \( -name "*.aux" -or -name "*.log" -or -name "*.dvi" \) -type f -exec rm {} \;