LATEXMK=latexmk
MAIN=showcase2019poster
TEXSOURCES:=$(MAIN).tex $(wildcard */*.tex)
TIKZSOURCES:=$(shell find -name "*.tikz")
PLOTSOURCES:=$(shell find -name "*.csv")
IMAGESOURCES:=$(shell find -name "*.eps")
SOURCES=$(TEXSOURCES) $(TIKZSOURCES) $(PLOTSOURCES) $(IMAGESOURCES) Makefile


all: $(SOURCES) tikzex

cleanaux:
	$(LATEXMK) -C $(MAIN)
	rm -f $(MAIN).pdfsync
	rm -rf *~ *.tmp
	rm -f *.bbl *.blg *.aux *.auxlock *.end *.fls *.log *.out *.fdb_latexmk *.synctex.gz *.nav *.run.xml *.snm

cleantikzoutput:
	rm -f tikz/tikzoutput/*

cleanall: cleanaux cleantikzoutput

tikzex:
	$(LATEXMK) -quiet -lualatex \
			-pdflualatex="lualatex --shell-escape --synctex=1 --interaction=nonstopmode %O %S" $(MAIN).tex

.PHONY: all cleanaux cleantikzoutput cleanall tikzex
