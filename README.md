24h LaTeX templates
===================

This repository contains the full source to my contribution to
the 2014 24 Hours Puzzle Championship. The idea is to give other
authors the option of reusing the templates in the future.

See this [blog post][puzzlespdf] for a link to the resulting
puzzle booklet.

Overview
--------

The repository includes source files for the full set of puzzles
and example puzzles, as well as the LaTeX sources for the
instruction, puzzle and solution booklets.

### Puzzles and examples

For each puzzle type, e.g. Geradeweg, there is an example puzzle
definition `geradeweg-example.pzl` as well as one or more
competition puzzles, e.g. `geradeweg-pyramids.pzl`. These are
meant to be rendered to PDF using the [drawpuzzle][drawpuzzle]
command line tool. A Makefile is provided that will call the tool
appropriately, generating PDF files `geradeweg-example.pdf`,
`geradeweg-pyramids.pdf`, `geradweg-pyramids-sol.pdf`.

If you want to use puzzle files that are already in PDF format,
just copy them there.

### LaTeX templates

The `tex/` subdirectory contains a couple of auxiliary LaTeX fragment
files, as well as the documents `rules.tex`, `puzzles.tex`,
`solutions.tex` and `solutions-compact.tex`. From within that directory,
these documents can be compiled to PDF with `pdflatex`. There's a
Makefile that does this.

To reuse these files, you'll have to replace the puzzle types and
puzzle references throughout the documents, as well as the instruction
definitions in the file `ruledef.tex`.

To just get the 24h document styling, copy the file `frames.tex` and
look at how it's used from the documents.

[puzzlespdf]: http://maybepuzzles.wordpress.com/2014/03/29/puzzle-set-24-hour-marathon/
[drawpuzzle]: https://github.com/robx/puzzle-draw-cmdline
