continuation lines
isContinuationLine
	indentOfLineBeingContinued ifNotNil: [   "we are already in a continuation"
		^ true ].
	(unmatchedLeftBraces > 0) ifTrue: [   	 "a block just opened"
		^ false ].	
	^ currentLineIndent > priorLineIndent	 "did the indent increase?"