generated-reduction actions
reduceActionForClassOrTraitDeclaration1: nodes
	| result |
	result := GraceClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result header: (nodes at: 2).
	result returnType: (nodes at: 3).
	result annotation: (nodes at: 4).
	result leftBraceToken: (nodes at: 5).
	result addObjects: ((nodes at: 6) at: 1) to: result items.
	result addNodes: ((nodes at: 6) at: 2) to: result _s.
	result rightBraceToken: (nodes at: 7).
	^ result