generated-reduction actions
reduceActionForClassOrTraitDeclaration1: nodes
	| result |
	result := GraceClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result header: (nodes at: 2).
	result returnType: (nodes at: 3).
	result leftBraceToken: (nodes at: 4).
	result body: (nodes at: 5).
	result rightBraceToken: (nodes at: 6).
	^ result