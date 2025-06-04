SRC=presentation.md

.PHONY: all
all: presentation.pdf

.PHONY: render
render: $(SRC)
	@rabbit -S 1440,900 --no-full-screen --type file $<

%.pdf: $(SRC)
	@rabbit -S 1920,1080 -p --type file -o $@ $<

.PHONY: pandoc
pandoc: $(SRC)
	@pandoc -t beamer -o presentation.pdf $<

.PHONY: clean
clean:
	@rm -f presentation.pdf
