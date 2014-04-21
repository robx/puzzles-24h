DRAW = drawpuzzle

TYPES = lits litsplus geradeweg nurikabe latintapa masyu fillomino \
        slalom skyscraper-tightfit pyramid-kropki slitherlink \
        slitherlink-liar sudoku sudoku-thermo wordloop wordsearch \
        doubleback compass curvedata

EXAMPLES = $(addsuffix -example, $(TYPES))

PUZZLES = lits-1 \
          litsplus-easy-growing \
          litsplus-x \
          litsplus-snakes \
          litsplus-3x5 \
          geradeweg-pyramids \
          geradeweg-anti \
          geradeweg-24 \
          twin-gn-geradeweg \
          twin-gn-nurikabe \
          nurikabe1 \
          latintapa \
          sudoku-2 \
          sudoku-thermo-cva-easier \
          pyramid-kropki-1 \
          pyramid-kropki-2 \
          slither-easy \
          slither-liar \
          skyscraper-tightfit \
          wordloop-colors \
          wordsearch-crawlgods \
          curvedata-pento \
          doubleback-S \
          slalom3 \
          compass-easy \
          compass-12

EXAMPLETARGETS = $(addsuffix .pdf, $(EXAMPLES))
PUZZLETARGETS = $(addsuffix .pdf, $(PUZZLES)) $(addsuffix -sol.pdf, $(PUZZLES))

all: examples puzzles docs

docs:
	make -C tex docs

examples: $(EXAMPLETARGETS)

puzzles: $(PUZZLETARGETS)

clean:
	rm -f $(PUZZLETARGETS) $(EXAMPLETARGETS)
	make -C tex clean

%-example.pdf: %-example.pzl
	$(DRAW) -e -f pdf $<

%.pdf %-sol.pdf: %.pzl
	$(DRAW) -f pdf $<
