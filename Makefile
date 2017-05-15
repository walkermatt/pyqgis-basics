workshop.html : template.html workshop.md big.js big.css
	pandoc --standalone --template=template.html -t html -f markdown workshop.md > workshop.html
