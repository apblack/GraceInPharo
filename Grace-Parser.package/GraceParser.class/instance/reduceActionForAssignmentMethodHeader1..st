generated-reduction actions
reduceActionForAssignmentMethodHeader1: nodes
	| result |
	result := GraceAssignmentMethodHeaderNode new.
	result id: (nodes at: 1).
	result colonEqualToken: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result parameter: (nodes at: 4).
	^ result