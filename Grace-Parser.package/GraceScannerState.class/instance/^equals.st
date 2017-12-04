comparing
= anotherState

	^ super = anotherState and: [ currentLineBraceDepth = anotherState currentLineBraceDepth 
				and: [indentOfLineBeingContinued = anotherState indentOfLineBeingContinued 
					and: [indentStack = anotherState indentStack 
						and: [maxIndentOfContinuation = anotherState maxIndentOfContinuation 
							and: [ previousMatch = anotherState previousMatch 
								and: [priorLineBraceDepth = anotherState priorLineBraceDepth 
									and: [priorLineIndent = anotherState priorLineIndent] ] ] ] ] ] ]