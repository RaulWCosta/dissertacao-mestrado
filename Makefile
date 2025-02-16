
compile: clean
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.lof *.lot main.pdf *.loa capitulos/*.aux
