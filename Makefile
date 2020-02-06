
.PHONY: clean allCards miniCards microCards euroCards euroSquareCards dominoCards circleCards bridgeCards pokerCards

OUTLINE ?= 1

FLAGS = --cropmarks

ifeq ($(OUTLINE),1)
	FLAGS += --outline
endif

allCards: miniCards pokerCards euroCards bridgeCards circleCards dominoCards euroSquareCards microCards
microCards: microCards.pdf
euroSquareCards: euroSquareCards.pdf
dominoCards: dominoCards.pdf
circleCards: circleCards.pdf
bridgeCards: bridgeCards.pdf
euroCards: euroCards.pdf
miniCards: miniCards.pdf
pokerCards: pokerCards.pdf

cardsListFull.csv: cardsList.csv cardsListGen.py
	python3 cardsListGen.py

%.pdf: templates/%Gen.glabels cardsListFull.csv
	glabels-3-batch -o $@ $< $(FLAGS)

clean:
	rm *.pdf cardsListFull.csv
