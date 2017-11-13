generated-reduction actions
reduceActionForBlockParameter1: nodes
	| result |
	result := GraceBlockParameterNode new.
	result id: (nodes at: 1).
	result pattern: (nodes at: 2).
	^ result