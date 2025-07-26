LATEXMK = latexmk

# PDF target
PDF = main.pdf

# Source files
SOURCES = main.tex tickets/ticket1.tex tickets/ticket2.tex styles.sty

.PHONY: all clean

all: $(PDF)

$(PDF): $(SOURCES)
	$(LATEXMK) -pdf -interaction=nonstopmode main.tex

clean:
	$(LATEXMK) -C
