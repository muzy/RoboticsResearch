all: show git

git:
	git add *
	git commit -v -m "autocommited by makefile"
	git push

edit:
	kate `find . | grep 'tex'` bibliography.bib
	
editall:
	kate `find . | grep 'tex'`

e: edit

s: show

sd:
	okular paper.pdf

show: pdf
	okular paper.pdf

pdf: pdfindex
	bibtex paper
	pdflatex -shell-escape paper.tex
	#makeindex paper.nlo -s nomencl.ist -o paper.nls
	pdflatex -shell-escape paper.tex

pdfindex:
	pdflatex -shell-escape paper.tex

