html:
	pandoc --standalone --template=template.html -t html -f markdown workshop.md > index.html

.PHONY: html
