generated-reduction actions
reduceActionForParameter1: nodes
	| result |
	result := GraceParameterNode new.
	result id: (nodes at: 1).
	result type: (nodes at: 2).
	^ result