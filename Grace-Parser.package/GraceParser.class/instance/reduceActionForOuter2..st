generated-reduction actions
reduceActionForOuter2: nodes
	| result |
	result := GraceOuterNode new.
	result addTokens: (nodes at: 1) to: result outerDotTokens.
	result outerToken: (nodes at: 2).
	^ result