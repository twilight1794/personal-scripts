import sys
import requests
#def ddd():
#	frase = 1
#	logfile = open("count.log", "a")
#	while frase <= 1132:
#		r = requests.get("http://www.caricatos.net/citas/mostrar.php", params = {"posi":frase})
#		r = r.text.encode('ascii', 'xmlcharrefreplace')
#		myrequest = r.text.splitlines()
#		if r.status_code == 200:
#			namefile = "cite" + str(frase)
#			with open(namefile, "ab") as citefile: 
#				crlf = archivo.tell()
#				ggg = frase + "\n"
#				logfile.write(ggg)
#				logfile.seek(crlf)
#				frase = frase + 1
#		else:
#			crlf = archivo.tell()
#			ggg = frase + "error" + "\n"
#			logfile.write(ggg)
#			logfile.seek(crlf)
#	logfile.close()
#ddd()
#---
frase = sys.argv[1]
r = requests.get("http://www.caricatos.net/citas/mostrar.php", params = {"posi":frase})
if r.status_code == 200:
	print r.text.encode('ascii', 'xmlcharrefreplace')
	
