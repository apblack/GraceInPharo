printing
printText
	| file |
	file := FileSystem / 'Users/black/Development/Pharo/Grace Parsing 2017/graceGrammar.txt'.
	file exists ifTrue: [ file delete ].
	self printTextToFile: file.