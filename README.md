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
 - Edit ```cardsList.csv``` to specify the quantity of each card needed
   - If you have extra fields that are useful to merge add them to the end, leaving ```Copies``` and ```CardName``` alone.
 - Open gLabels and edit the design if required
 - Run ```make```
 