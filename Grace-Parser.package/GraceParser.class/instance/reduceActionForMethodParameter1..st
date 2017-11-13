generated-reduction actions
reduceActionForMethodParameter1: nodes
	| result |
	result := GraceMethodParameterNode new.
	result id: (nodes at: 1).
	result type: (nodes at: 2).
	^ result