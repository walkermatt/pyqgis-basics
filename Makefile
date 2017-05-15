html:
	pandoc --standalone --template=template.html -t html -f markdown workshop.md > workshop.html

.PHONY: html
