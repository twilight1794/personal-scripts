from subprocess import Popen, PIPE
phrase = 1
myfile = open("out.html", "a")
while phrase <= 1132:
	process = Popen(['python', 'web.py', str(phrase)], stdout=PIPE)
	process.wait()
	result = process.stdout.read()
	endoffile = myfile.tell()
	myfile.write(str(result))
	myfile.seek(endoffile)
	phrase += 1
myfile.close()
