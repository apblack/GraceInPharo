continuation lines
recordContinuationStatus
	indentOfLineBeingContinued ifNil: [ 
		indentOfLineBeingContinued := indentStack last.
		maxIndentOfContinuation := currentLineIndent
	]