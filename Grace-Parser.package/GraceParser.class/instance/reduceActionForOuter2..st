generated-reduction actions
reduceActionForOuter2: nodes
	| result |
	result := GraceOuterNode new.
	result addTokens: (nodes at: 1) to: result outers.
	result addToken: (nodes at: 2) to: result outers.
	^ result