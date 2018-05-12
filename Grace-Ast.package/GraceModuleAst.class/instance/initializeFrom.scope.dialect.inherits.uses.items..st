instance initialization
initializeFrom: aSourceRange scope: aScope dialect: aGraceDialectAst inherits: anInheritance uses: aListOfUses items: aListOfItems
	dialect := aGraceDialectAst.
	self initializeFrom: aSourceRange scope: aScope inherits: anInheritance uses: aListOfUses items: aListOfItems.
	^ self