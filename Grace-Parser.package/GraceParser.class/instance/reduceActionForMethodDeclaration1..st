generated-reduction actions
reduceActionForMethodDeclaration1: nodes
	| result |
	result := GraceMethodDeclarationNode new.
	result onceToken: (nodes at: 1).
	result methodToken: (nodes at: 2).
	result header: (nodes at: 3).
	result returnType: (nodes at: 4).
	result annotationList: (nodes at: 5).
	result leftBraceToken: ((nodes at: 6) at: 1).
	result addObjects: ((nodes at: 6) at: 2) to: result items.
	result addNodes: ((nodes at: 6) at: 3) to: result _s.
	result rightBraceToken: ((nodes at: 6) at: 4).
	^ result