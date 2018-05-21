generated-reduction actions
reduceActionForOuter1: nodes
	| result |
	result := GraceOuterNode new.
	result outerToken: (nodes at: 1).
	^ result