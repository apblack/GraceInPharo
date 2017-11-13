generated-reduction actions
reduceActionForMethodDeclaration1: nodes
	| result |
	result := GraceMethodDeclarationNode new.
	result methodToken: (nodes at: 1).
	result header: (nodes at: 2).
	result returnType: (nodes at: 3).
	result annotation: (nodes at: 4).
	result leftBraceToken: (nodes at: 5).
	result body: (nodes at: 6).
	result rightBraceToken: (nodes at: 7).
	^ result