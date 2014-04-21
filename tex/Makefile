DOCUMENTS = rules puzzles solutions solutions-compact
TEXDEPS = tex/ruledef.tex tex/frames.tex tex/defs.tex

DOCTARGETS = $(addsuffix .pdf, $(DOCUMENTS))
AUXFILES = $(addsuffix .aux, $(DOCUMENTS))
LOGFILES = $(addsuffix .log, $(DOCUMENTS))

docs: $(DOCTARGETS)

%.pdf: %.tex ruledef.tex frames.tex defs.tex
	pdflatex $<
	pdflatex $<

clean:
	rm -f $(AUXFILES) $(LOGFILES) $(DOCTARGETS)
