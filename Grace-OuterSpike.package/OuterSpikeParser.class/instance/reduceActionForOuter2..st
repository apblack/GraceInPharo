generated-reduction actions
reduceActionForOuter2: nodes
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result dotTokens.
	result addToken: (nodes at: 3) to: result outers.
	^ result