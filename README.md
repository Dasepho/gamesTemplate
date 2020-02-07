Template repo for designing card games
=======================================
##### By Daniel Hobson (Dasepho)

----------
### Dependencies:
 - python3
 - glabels (and glabels-3-batch)

 ----------
# Usage
 - First you will need to move the ```.template``` files from the ```/templates/``` directory to ```$HOME/.config/libglabels/templates```, which is where gLabels will look for them.
 - Design your card art in your favourite image manipulation program
   - Save them as ```/img/cardName.png```
   - e.g. ```/img/cardA.png```, ```/img/cardB.png``` etc
   - Any card that has no artwork that is specified via merge can be omitted
 - Edit ```cardsList.csv``` to specify the quantity of each card needed
   - If you have extra fields that are useful to merge add them to the end, leaving ```Copies``` and ```CardName``` alone.
   - It is possible to overwrite the default source list when running make using ```make SOURCE=inputFile```
 - If required, open the ```____.glabels``` files and edit the design. They are in the ```/templates/``` directory.
 - Run ```make```
    - If you want standard 2.5"x3.5" Poker cards, run ```make pokerCards``` and you'll get 9 cards per sheet
    - If you want mini size (1.75"x2.5") cards run ```make miniCards``` and you'll get 18 cards per sheet
    - Other sizes are also available: ```microCards```,```euroCards```,```euroSquareCards``` etc
    - By default, the ```--cropmarks``` option is specified but not ```--outlines```. Use ```make OUTLINE=1``` if you want them

------------
## Notes
 - In gLabels3, the merge path is an absolute path, so upon first use, each ```______.glabels``` file will likely tell you that the merge file doesn't exist, since your filestructure doesn't match mine. You will have to open gLabels, then open each ```______.glabels``` file to manually update it. For this reason, I don't suggest using a copy of this repo for each project. Instead, store your project-specific files in their own directory, and copy them here when you're ready to generate output pdfs.
    - I believe gLabels4 should fix this by implementing relative paths, so I'll look at that when it's stable.
 - gLabels will crash if you try and open a file that merges with ```cardsListFull.csv``` when it doesn't exist. It's easiest to run ```make``` so it is generated before editing a gLabels file