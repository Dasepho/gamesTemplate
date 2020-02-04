
allCards: miniCards pokerCards
miniCards: miniCards.pdf
pokerCards: pokerCards.pdf

cardsListFull.csv: cardsList.csv cardsListGen.py
	python3 cardsListGen.py

%.pdf: %Gen.glabels cardsListFull.csv
	glabels-3-batch -o $@ $<

clean:
	rm *.pdf cardsListFull.csv
