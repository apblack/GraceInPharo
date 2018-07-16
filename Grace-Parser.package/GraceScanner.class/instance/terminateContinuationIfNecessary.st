continuation lines
terminateContinuationIfNecessary
	indentOfLineBeingContinued ifNil: [ ^ self ].
	(braceChange = 0 and: [currentLineIndent >= maxIndentOfContinuation]) ifTrue: [ 
		maxIndentOfContinuation := currentLineIndent.
		^ self 
	].
	"The continuation has ended, either because we have opened a new block, 
	or because currentLineIndent < maxIndentOfContinuation"
	priorLineIndent := indentOfLineBeingContinued.
	indentOfLineBeingContinued := nil.	"receord termination of continuation" 
	