Template repo for designing card games
=======================================
##### By Daniel Hobson (Dasepho)

----------
### Dependencies:
 - python3
 - glabels (and glabels-3-batch)

 ----------
# Usage
 - Design your card art in your favourite image manipulation program
   - Save them as ```/img/cardName.png```
   - e.g. ```/img/cardA.png```, ```/img/cardB.png``` etc
   - Any card that has no artwork that is specified via merge can be omitted
 - Edit ```cardsList.csv``` to specify the quantity of each card needed
   - If you have extra fields that are useful to merge add them to the end, leaving ```Copies``` and ```CardName``` alone.
 - If required, open ```pokerCardsGen.glabels``` or ```miniCardsGen.glabels``` and edit the design
 - Run ```make```
    - If you want standard 2.5"x3.5" Poker cards, run ```make pokerCards``` and you'll get 9 cards per sheet
    - If you want mini size (1.75"x2.5") cards run ```make miniCards``` and you'll get 18 cards per sheet
    - Other sizes are also available: ```microCards```,```euroCards```,```euroSquareCards``` etc
    - By default, the ```--cropmarks``` option is specified but not ```--outlines```. These can be adjusted in the ```Makefile```

------------
## Notes
 - gLabels will crash if you try and open a file that merges with ```cardsListFull.csv``` when it doesn't exist. It's easiest to run ```make``` so it is generated before editing a gLabels file