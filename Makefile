compile:
	pdflatex -verbose -output-directory=out -aux-directory=out main.tex
	open main.pdf