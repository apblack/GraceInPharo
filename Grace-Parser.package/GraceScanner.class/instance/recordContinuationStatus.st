continuation lines
recordContinuationStatus
	indentOfLineBeingContinued
		ifNil: [ indentOfLineBeingContinued := indentStack last.
			maxIndentOfContinuation := currentLineIndent ]
		ifNotNil: [ currentLineIndent < indentOfLineBeingContinued
				ifTrue: [ self lexicalError:
							'if this line continues the previous line, its indentation must be at least '
								, indentOfLineBeingContinued asString
								, '; if it is not part of the continuation, its indentation must be '
								, indentStack last asString ] ]