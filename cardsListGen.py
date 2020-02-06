from csv import reader, writer, QUOTE_MINIMAL
from os import getcwd
from argparse import ArgumentParser

parser = ArgumentParser()
parser.add_argument("-i","--inputFile", help="Specify a .csv file as the source. Default 'cardsList.csv'", default="cardsList.csv")
args = parser.parse_args()

with open(args.inputFile) as in_file:
    cardsList_reader = reader(in_file,delimiter=',')
    with open('cardsListFull.csv', mode='w') as out_file:
        cardsList_writer = writer(out_file, delimiter=',', quotechar='"', quoting=QUOTE_MINIMAL)    
        for row_num, row in enumerate(cardsList_reader):
            if row_num == 0:
                cardsList_writer.writerow(row[1:] + ["imgFile"])
            else:
                for i in range(int(row[0])):
                    cardsList_writer.writerow(row[1:] + [getcwd() + "/img/" + row[1] + ".png"])