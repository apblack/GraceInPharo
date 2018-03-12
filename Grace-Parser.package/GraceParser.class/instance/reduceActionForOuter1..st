generated-reduction actions
reduceActionForOuter1: nodes
	| result |
	result := GraceOuterNode new.
	result addToken: (nodes at: 1) to: result outers.
	^ result