NAME := KelvinLy
TEX := pdflatex
TEXS := $(wildcard *.tex)
AUXS := $(patsubst %.tex,%.aux,$(TEXS))
PDFS := $(patsubst %.tex,%.pdf,$(TEXS))

all: software hardware both ti

clean:
	rm *.{aux,pdf}

$(AUXS): %.aux: %.tex
	${TEX} $<

$(PDFS): %.pdf: %.tex %.aux
	${TEX} $<

software: resume-${NAME}-software.pdf

hardware: resume-${NAME}-hardware.pdf

both: resume-${NAME}-all.pdf

ti: resume-${NAME}-TI.pdf
