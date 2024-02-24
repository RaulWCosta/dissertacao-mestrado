
# Reason https://tex.stackexchange.com/questions/8332/undefined-citation-warnings
compile:
	touch out/main.pdf && rm out/main.pdf
	pdflatex -quiet -output-directory=out -aux-directory=out main.tex
	bibtex -include-directory=out -quiet out/main
	pdflatex -quiet -output-directory=out -aux-directory=out main.tex
	pdflatex -quiet -output-directory=out -aux-directory=out main.tex
	open out/main.pdf
