generated-reduction actions
reduceActionForExpression3: nodes
	| result |
	result := OSExplicitRequest new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result message: (nodes at: 3).
	^ result