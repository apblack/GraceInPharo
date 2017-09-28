generated-reduction actions
reduceActionForClassOrTraitDeclaration2: nodes
	| result |
	result := GraceTraitDeclarationNode new.
	result traitToken: (nodes at: 1).
	result header: (nodes at: 2).
	result returnType: (nodes at: 3).
	result leftBraceToken: (nodes at: 4).
	result body: (nodes at: 5).
	result rightBraceToken: (nodes at: 6).
	^ result