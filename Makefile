lhs2TeX = /Users/joshko/Library/Haskell/bin/lhs2TeX
contents = processed-chapter1.tex

all: dissertation

dissertation: processed-agda-preamble.tex $(contents)
	pdflatex dissertation

processed-agda-preamble.tex: agda-preamble.tex
	$(lhs2TeX) --agda agda-preamble.tex -o processed-agda-preamble.tex

chapter1: processed-chapter1.tex
	pdflatex -jobname chapter1 processed-chapter1

processed-chapter1.tex: agda-preamble.tex chapter1.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter1.tex document-end.tex > processed-chapter1\'.tex
	$(lhs2TeX) --agda processed-chapter1\'.tex -o processed-chapter1.tex
	rm -f processed-chapter1\'.tex

