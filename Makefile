# This is part of the ``Git First Step''.
# Copyright 2014, 2020 Yoshida Shin.
# See the file slide.tex for copying conditions.

TEX = *.tex
STY = *.sty

test: ${TEX} ${STY} clean
	platex slide
	dvipdfmx slide.dvi
	rm -f *.aux *.log *.dvi *.nav *.out *.snm *.toc *.vrb

clean:
	rm -f *.aux *.log *.dvi *.nav *.out *.snm *.toc *.vrb *.pdf

all: clean
	platex slide
	platex slide
	dvipdfmx slide.dvi
	rm -f *.aux *.log *.dvi *.nav *.out *.snm *.toc *.vrb
