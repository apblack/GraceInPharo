initialize-release
initialize
	super initialize.
	"state := #lineBegin."
	braceDepth := 0.
	priorLineBraceDepth := 0.
	priorLineIndent := 0.
	currentIndent := 0.
	indentStack := OrderedCollection with: 0.  "the initial indent"
	lineStarts := OrderedCollection with: 1.	"line 1 starts with character 1"
	newlineChars := { Character cr. Character lf. Character codePoint: 16r2028 }. 
		"all line break chars"
	closingBraceLine := false
		