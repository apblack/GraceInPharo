generated-reduction actions
reduceActionForType5: nodes
	| result |
	result := nodes at: 2.
	result leftParenToken: (nodes at: 1).
	result rightParenToken: (nodes at: 3).
	^ result