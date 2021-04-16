target = xkcd

pdf: ${target}.tex
	latexmk ${target}.tex

read: pdf
	start ${target}.pdf

clean:
	latexmk -c