generated
visitDecimalNumeral: aNumeral

	^ GraceNumberAst 
			from: aNumeral range
			scope: aNumeral scope
			value: aNumeral numberValue