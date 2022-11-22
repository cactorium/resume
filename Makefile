NAME := KelvinLy
TEX := pdflatex
TEXS := $(wildcard *.tex)
AUXS := $(patsubst %.tex,%.aux,$(TEXS))
PDFS := $(patsubst %.tex,%.pdf,$(TEXS))

all: hardware

clean:
	rm *.{aux,pdf}

$(AUXS): %.aux: %.tex
	${TEX} $<

$(PDFS): %.pdf: %.tex %.aux
	${TEX} $<

hardware: resume-${NAME}-hardware.pdf
software: resume-${NAME}-software.pdf
