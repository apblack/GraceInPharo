visit methods
visitTypeDeclaration: aTypeDecl
	aTypeDecl declaredName == 'Function0' ifTrue: [  self halt  ].
	aTypeDecl id markAsDefinition.
	aTypeDecl scope add: (GraceType fromParseTreeNode: aTypeDecl).
	self createScope: GraceTypeScope in: aTypeDecl.
	^ super visitTypeDeclaration: aTypeDecl