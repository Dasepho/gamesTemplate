

miniCards: outputMiniCards.pdf

cardsListFull.csv: cardsList.csv cardsListGen.py
	python3 cardsListGen.py

outputMiniCards.pdf: miniCardsGen.glabels cardsListFull.csv
	glabels-3-batch -o $@ miniCardsGen.glabels

clean:
	rm *.pdf cardsListFull.csv
