lhs2TeX = /Users/joshko/Library/Haskell/bin/lhs2TeX

all: dissertation

clean:
	cat .gitignore | xargs echo rm -f | sh

dissertation: processed-agda-preamble.tex processed-chapter1.tex processed-chapter2.tex processed-chapter3.tex processed-chapter4.tex processed-chapter5.tex processed-chapter6.tex processed-chapter7.tex
	pdflatex dissertation

processed-agda-preamble.tex: agda-preamble.tex
	$(lhs2TeX) --agda agda-preamble.tex -o processed-agda-preamble.tex

chapter1: processed-chapter1.tex
	pdflatex -jobname chapter1 processed-chapter1

processed-chapter1.tex: dissertation.tex processed-agda-preamble.tex chapter1.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter1\'.tex
	cat agda-preamble.tex >> processed-chapter1\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{1-1}\n\n" >> processed-chapter1\'.tex
	cat chapter1.tex >> processed-chapter1\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter1\'.tex
	$(lhs2TeX) --agda processed-chapter1\'.tex -o processed-chapter1.tex
	rm -f processed-chapter1\'.tex

chapter2: processed-chapter2.tex
	pdflatex -jobname chapter2 processed-chapter2

processed-chapter2.tex: dissertation.tex processed-agda-preamble.tex chapter2.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter2\'.tex
	cat agda-preamble.tex >> processed-chapter2\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{2-1}\n\n" >> processed-chapter2\'.tex
	cat chapter2.tex >> processed-chapter2\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter2\'.tex
	$(lhs2TeX) --agda processed-chapter2\'.tex -o processed-chapter2.tex
	rm -f processed-chapter2\'.tex

chapter3: processed-chapter3.tex
	pdflatex -jobname chapter3 processed-chapter3

processed-chapter3.tex: dissertation.tex processed-agda-preamble.tex chapter3.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter3\'.tex
	cat agda-preamble.tex >> processed-chapter3\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{3-1}\n\n" >> processed-chapter3\'.tex
	cat chapter3.tex >> processed-chapter3\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter3\'.tex
	$(lhs2TeX) --agda processed-chapter3\'.tex -o processed-chapter3.tex
	rm -f processed-chapter3\'.tex

chapter4: processed-chapter4.tex
	pdflatex -jobname chapter4 processed-chapter4

processed-chapter4.tex: dissertation.tex processed-agda-preamble.tex chapter4.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter4\'.tex
	cat agda-preamble.tex >> processed-chapter4\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{4-1}\n\n" >> processed-chapter4\'.tex
	cat chapter4.tex >> processed-chapter4\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter4\'.tex
	$(lhs2TeX) --agda processed-chapter4\'.tex -o processed-chapter4.tex
	rm -f processed-chapter4\'.tex

chapter5: processed-chapter5.tex
	pdflatex -jobname chapter5 processed-chapter5

processed-chapter5.tex: dissertation.tex processed-agda-preamble.tex chapter5.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter5\'.tex
	cat agda-preamble.tex >> processed-chapter5\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{5-1}\n\n" >> processed-chapter5\'.tex
	cat chapter5.tex >> processed-chapter5\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter5\'.tex
	$(lhs2TeX) --agda processed-chapter5\'.tex -o processed-chapter5.tex
	rm -f processed-chapter5\'.tex

chapter6: processed-chapter6.tex
	pdflatex -jobname chapter6 processed-chapter6

processed-chapter6.tex: dissertation.tex processed-agda-preamble.tex chapter6.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter6\'.tex
	cat agda-preamble.tex >> processed-chapter6\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{6-1}\n\n" >> processed-chapter6\'.tex
	cat chapter6.tex >> processed-chapter6\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter6\'.tex
	$(lhs2TeX) --agda processed-chapter6\'.tex -o processed-chapter6.tex
	rm -f processed-chapter6\'.tex

chapter7: processed-chapter7.tex
	pdflatex -jobname chapter7 processed-chapter7

processed-chapter7.tex: dissertation.tex processed-agda-preamble.tex chapter7.tex
	echo "\\documentclass[dissertation]{subfiles}\n\n" > processed-chapter7\'.tex
	cat agda-preamble.tex >> processed-chapter7\'.tex
	echo "\n\n\\\\begin{document}\n\n\subfileheadercorrection\n\n\\\\setcounter{chapter}{7-1}\n\n" >> processed-chapter7\'.tex
	cat chapter7.tex >> processed-chapter7\'.tex
	echo "\subfilebiblio\n\n\\\\end{document}\n" >> processed-chapter7\'.tex
	$(lhs2TeX) --agda processed-chapter7\'.tex -o processed-chapter7.tex
	rm -f processed-chapter7\'.tex

