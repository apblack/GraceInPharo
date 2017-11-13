generated-reduction actions
reduceActionForAssignment1: nodes
	| result |
	result := GraceAssignmentNode new.
	result lhs: (nodes at: 1).
	result colonEqualToken: (nodes at: 2).
	result rhs: (nodes at: 3).
	^ result