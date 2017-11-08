initialize-release
initialize
	super initialize.
	currentLineBraceDepth := 0.
	priorLineBraceDepth := 0.
	priorLineIndent := 0.
	currentLineIndent := 0.
	indentStack := OrderedCollection with: 0.  "the initial indent"
	newlineChars := { Character cr. Character lf. Character codePoint: 16r2028 }. 
		"all line break chars"
		