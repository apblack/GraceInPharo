checking
checkForShadowingDefinitionOf: aDeclarationNode
	(aDeclarationNode scope defines: aDeclarationNode declaredName)
		ifTrue: [ self
				shadowingError:
					('You can''t use `{1}` as the name of a {2}, because `{1}` is
		already declared as a {3} in a surrounding scope'
						format:
							{aDeclarationNode declaredName.
							aDeclarationNode kind.
							(aDeclarationNode scope lookup: aDeclarationNode declaredName)
								kind})
				node: aDeclarationNode ]