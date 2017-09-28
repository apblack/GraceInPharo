generated-reduction actions
reduceActionForExpression1: nodes
	| result |
	result := GraceBinaryRequestNode new.
	result left: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result ops.
	result addNodes: ((nodes at: 2) at: 2) to: result rights.
	^ result