checking
checkForShadowingDefinitionOf: aDeclarationNode
	| priorDeclaration |
	priorDeclaration := aDeclarationNode scope lookupLocallyOrReused: aDeclarationNode declaredName
		 ifAbsent: [ ^ self ].
	self halt.
	self shadowingError:
					('You can''t use `{1}` as the name of a {2}, because `{1}` is already declared as a {3} on {4} in a surrounding scope'
						format: {
							aDeclarationNode declaredName.
							aDeclarationNode kind.
							priorDeclaration kind.
							priorDeclaration rangeLongPrintString } )
				node: aDeclarationNode
