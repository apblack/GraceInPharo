generated-reduction actions
reduceActionForExpression4: nodes
	| result |
	result := OSOuterRequest new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result message: (nodes at: 3).
	^ result