generated-reduction actions
reduceActionForTraitDeclaration1: nodes
	| result |
	result := GraceTraitDeclarationNode new.
	result traitToken: (nodes at: 1).
	result header: (nodes at: 2).
	result returns: (nodes at: 3).
	result annotationList: (nodes at: 4).
	result leftBraceToken: ((nodes at: 5) at: 1).
	result addObjects: ((nodes at: 5) at: 2) to: result items.
	result addNodes: ((nodes at: 5) at: 3) to: result _s.
	result rightBraceToken: ((nodes at: 5) at: 4).
	^ result