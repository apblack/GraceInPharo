generated-reduction actions
reduceActionForTypeDeclaration1: nodes
	| result |
	result := GraceTypeDeclarationNode new.
	result typeToken: (nodes at: 1).
	result id: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result equalToken: (nodes at: 4).
	result value: (nodes at: 5).
	^ result