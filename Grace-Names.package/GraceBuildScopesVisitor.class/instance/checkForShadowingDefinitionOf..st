checking
checkForShadowingDefinitionOf: aDeclarationNode
	| priorDeclaration |
	priorDeclaration := aDeclarationNode scope lookup: aDeclarationNode declaredName
		 ifAbsent: [ ^ self ].
	self shadowingError:
		('You can''t use `{1}` as the name of a {2}, because `{1}` is already declared as a {3} on {4} in a surrounding scope; use a different name'
			format: {
				aDeclarationNode declaredName.
				aDeclarationNode kind.
				priorDeclaration kind.
				priorDeclaration lineRangePrintString } )
		node: aDeclarationNode
