.PHONY : all

all : paper.pdf

clean : 
	rm -rf build
	rm -f paper.pdf

build/paper.tex : paper.lhs
	lhs2TeX -o build/paper.tex paper.lhs

# -output-directory is nice
# -halt-on-error is also
paper.pdf : build/paper.tex
	mkdir -p build
	make -C figures
	pdflatex -draftmode -halt-on-error -output-directory=build build/paper.tex
	bibtex build/paper.aux
	pdflatex -draftmode -halt-on-error -output-directory=build build/paper.tex
	pdflatex -output-directory=build build/paper.tex
	cp build/paper.pdf paper.pdf
