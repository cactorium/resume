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

#resume-${NAME}-software.pdf: resume-${NAME}-software.tex
	#${TEX} resume-${NAME}-software.tex

software: resume-${NAME}-software.pdf

#resume-${NAME}-hardware.pdf: resume-${NAME}-hardware.tex
	#${TEX} resume-${NAME}-hardware.tex

hardware: resume-${NAME}-hardware.pdf

#resume-${NAME}-all.pdf: resume-${NAME}-all.tex
	#${TEX} resume-${NAME}-all.tex

both: resume-${NAME}-all.pdf

#resume-${NAME}-TI.pdf: resume-${NAME}-TI.tex
	#${TEX} resume-${NAME}-TI.tex

ti: resume-${NAME}-TI.pdf
