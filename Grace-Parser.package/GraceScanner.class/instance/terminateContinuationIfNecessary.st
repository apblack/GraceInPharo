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
	((braceChange = 0) and: [ currentLineIndent ~= priorLineIndent ]) ifTrue: [ 
		self lexicalError:
			'if this line continues the previous line, its indentation must be at least '
			, maxIndentOfContinuation asString
			, '; if it starts a new statement, its indentation must be '
			, indentOfLineBeingContinued asString ].
	indentOfLineBeingContinued := nil.	"receord termination of continuation" 
	