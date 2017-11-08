continuation lines
isContinuationLine
	indentOfLineBeingContinued ifNotNil: [ ^ true ].
	^ currentLineIndent > priorLineIndent