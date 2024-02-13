texfile := cv

$(texfile).pdf: $(texfile).tex
	pdflatex $(texfile).tex
	biber $(texfile)
	pdflatex $(texfile).tex
	pdflatex $(texfile).tex

clean:
	rm -rf *.aux *.bbl *.bcf *.blg *.log *.out *.pdf *.run.xml
	

all: $(texfile).pdf
