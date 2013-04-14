lhs2TeX = /Users/joshko/Library/Haskell/bin/lhs2TeX
contents = processed-chapter1.tex processed-chapter2.tex processed-chapter3.tex processed-chapter4.tex processed-chapter5.tex processed-chapter6.tex processed-chapter7.tex

all: dissertation

clean:
	cat .gitignore | xargs echo rm -f | sh

dissertation: processed-agda-preamble.tex $(contents)
	pdflatex dissertation

processed-agda-preamble.tex: agda-preamble.tex
	$(lhs2TeX) --agda agda-preamble.tex -o processed-agda-preamble.tex

chapter1: processed-chapter1.tex
	pdflatex -jobname chapter1 processed-chapter1

processed-chapter1.tex: dissertation.tex agda-preamble.tex chapter1.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter1.tex document-end.tex > processed-chapter1\'.tex
	$(lhs2TeX) --agda processed-chapter1\'.tex -o processed-chapter1.tex
	rm -f processed-chapter1\'.tex

chapter2: processed-chapter2.tex
	pdflatex -jobname chapter2 processed-chapter2

processed-chapter2.tex: dissertation.tex agda-preamble.tex chapter2.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter2.tex document-end.tex > processed-chapter2\'.tex
	$(lhs2TeX) --agda processed-chapter2\'.tex -o processed-chapter2.tex
	rm -f processed-chapter2\'.tex

chapter3: processed-chapter3.tex
	pdflatex -jobname chapter3 processed-chapter3

processed-chapter3.tex: dissertation.tex agda-preamble.tex chapter3.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter3.tex document-end.tex > processed-chapter3\'.tex
	$(lhs2TeX) --agda processed-chapter3\'.tex -o processed-chapter3.tex
	rm -f processed-chapter3\'.tex

chapter4: processed-chapter4.tex
	pdflatex -jobname chapter4 processed-chapter4

processed-chapter4.tex: dissertation.tex agda-preamble.tex chapter4.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter4.tex document-end.tex > processed-chapter4\'.tex
	$(lhs2TeX) --agda processed-chapter4\'.tex -o processed-chapter4.tex
	rm -f processed-chapter4\'.tex

chapter5: processed-chapter5.tex
	pdflatex -jobname chapter5 processed-chapter5

processed-chapter5.tex: dissertation.tex agda-preamble.tex chapter5.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter5.tex document-end.tex > processed-chapter5\'.tex
	$(lhs2TeX) --agda processed-chapter5\'.tex -o processed-chapter5.tex
	rm -f processed-chapter5\'.tex

chapter6: processed-chapter6.tex
	pdflatex -jobname chapter6 processed-chapter6

processed-chapter6.tex: dissertation.tex agda-preamble.tex chapter6.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter6.tex document-end.tex > processed-chapter6\'.tex
	$(lhs2TeX) --agda processed-chapter6\'.tex -o processed-chapter6.tex
	rm -f processed-chapter6\'.tex

chapter7: processed-chapter7.tex
	pdflatex -jobname chapter7 processed-chapter7

processed-chapter7.tex: dissertation.tex agda-preamble.tex chapter7.tex
	cat documentclass-subfiles.tex agda-preamble.tex document-begin.tex chapter7.tex document-end.tex > processed-chapter7\'.tex
	$(lhs2TeX) --agda processed-chapter7\'.tex -o processed-chapter7.tex
	rm -f processed-chapter7\'.tex

