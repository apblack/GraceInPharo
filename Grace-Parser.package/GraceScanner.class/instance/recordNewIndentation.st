line handling
recordNewIndentation
	"One or more blocks have just started.  Record the new indentation(s)"
	currentLineIndent <= priorLineIndent ifTrue: [
		 self lexicalError: 'Please indent the body of a block'
	].
	braceChange > 1 ifTrue: [ self lexicalError: 'The prior line opened two blocks.  There is no way for you to close them correctly!  Please split the prior line into two.' ].
	braceChange timesRepeat: [ indentStack addLast: currentLineIndent ].