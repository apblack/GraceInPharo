generated-reduction actions
reduceActionForDefDeclaration1: nodes
	| result |
	result := GraceDefDeclarationNode new.
	result defToken: (nodes at: 1).
	result id: (nodes at: 2).
	result type: (nodes at: 3).
	result annotationList: (nodes at: 4).
	result equalToken: ((nodes at: 5) at: 1).
	result initializer: ((nodes at: 5) at: 2).
	^ result