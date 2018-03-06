generated-reduction actions
reduceActionForMethodDeclaration1: nodes
	| result |
	result := GraceMethodDeclarationNode new.
	result methodToken: (nodes at: 1).
	result header: (nodes at: 2).
	result returnType: (nodes at: 3).
	result annotation: (nodes at: 4).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result addObjects: ((nodes at: 5) at: 2) to: result items.
	result addNodes: ((nodes at: 5) at: 3) to: result _s.
	result rightBraceToken: ((nodes at: 5) at: 4).
	^ result