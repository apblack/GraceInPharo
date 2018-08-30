line handling
recordNewIndentation
	"One or more blocks have just started.  Record the new indentation(s).
	
	Note that it is possible for a block to have started, but for braceChange 
	to be 0, as in
	    } else {
   In this case, the indentation need not change.
	"
	((braceChange > 0) and: [currentLineIndent <= priorLineIndent]) ifTrue: [
		 self lexicalError: 'Please indent the body of a block' ].
	braceChange > 1 ifTrue: [ 
		self lexicalError: 'The prior line opened two blocks.  There is no way for you to close them correctly!  Please split the prior line into two.' ].
	braceChange timesRepeat: [ indentStack addLast: currentLineIndent ].