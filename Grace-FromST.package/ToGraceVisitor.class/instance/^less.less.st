output
<< stuff
	isLineEmpty ifTrue: [ 
		indentCount timesRepeat: [ outStream << $  ] ].
	isLineEmpty := false.
	^ outStream << stuff