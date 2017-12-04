comparing
hash

	^ (((((((super hash hashMultiply bitXor: currentLineBraceDepth) 
		hashMultiply bitXor: currentLineBraceDepth)  
			hashMultiply bitXor: indentOfLineBeingContinued)  
				hashMultiply bitXor: indentStack)  
					hashMultiply bitXor: maxIndentOfContinuation) 
						hashMultiply bitXor:previousMatch)
							hashMultiply bitXor: priorLineBraceDepth) 
								hashMultiply bitXor: priorLineIndent 