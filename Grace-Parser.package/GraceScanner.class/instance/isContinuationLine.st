line handling
isContinuationLine
	braceDepth > priorLineBraceDepth ifTrue: [ ^ true ].
	^ currentIndent > priorLineIndent