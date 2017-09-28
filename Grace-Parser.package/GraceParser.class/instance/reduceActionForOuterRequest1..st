generated-reduction actions
reduceActionForOuterRequest1: nodes
	| result |
	result := GraceOuterRequestNode new.
	result addTokens: (nodes at: 1) to: result outerDotTokens.
	result request: (nodes at: 2).
	^ result