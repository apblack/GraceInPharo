generated
visitDecimalNumeral: aNumeral

	^ GraceNumberAst 
			from: aNumeral range
			value: aNumeral numberValue