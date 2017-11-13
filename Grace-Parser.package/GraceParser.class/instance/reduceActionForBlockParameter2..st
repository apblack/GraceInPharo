generated-reduction actions
reduceActionForBlockParameter2: nodes
	| result |
	result := GraceBlockParameterNode new.
	result pattern: (nodes at: 1).
	^ result