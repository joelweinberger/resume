cv.pdf: cv.tex
	pdflatex cv.tex
	biber cv
	pdflatex cv.tex
	pdflatex cv.tex

all: cv.pdf
