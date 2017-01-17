import pdb
import csv
myfile = open("outmeal.html","r")

quote = []
cite = []
desc = []
date = []
counter = 1
i = 0
for line in myfile.readlines():
	if counter == 1:
		quote.append(line)
		counter = 2
		continue
	elif counter == 2:
		cite.append(line)
		counter = 3
		continue
	elif counter == 3:
		desc.append(line)
		counter = 4
		continue
	else:
		date.append(line)
		i += 1
		counter = 1
		continue
myfile.close()

# Write CSV file
i = 0
myfile2 = open("quotes.csv", "a")
while i < len(quote):
	myline = quote[i] + "\t" + cite[i] + "\t" + desc[i] + "\t" + date[i]
	myfile2.write(myline)
	i += 1
