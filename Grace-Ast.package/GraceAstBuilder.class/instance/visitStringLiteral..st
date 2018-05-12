visitation
visitStringLiteral: aString

	^ GraceStringAst
			from: aString range
			scope: aString scope
			value: aString value