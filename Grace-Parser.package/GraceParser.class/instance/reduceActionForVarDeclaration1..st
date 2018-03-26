generated-reduction actions
reduceActionForVarDeclaration1: nodes
	| result |
	result := GraceVarDeclarationNode new.
	result varToken: (nodes at: 1).
	result id: (nodes at: 2).
	result type: (nodes at: 3).
	result annotationList: (nodes at: 4).
	result colonEqualToken: ((nodes at: 5) at: 1).
	result initializer: ((nodes at: 5) at: 2).
	^ result