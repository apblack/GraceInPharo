initialize-release
initialize
	super initialize.
	currentLineBraceDepth := 0.
	priorLineBraceDepth := 0.
	priorLineIndent := 0.
	currentLineIndent := 0.
	indentStack := OrderedCollection with: 0.  "the initial indent"
	newlineChars := self class newlineChars. 
		"all line break chars"
		