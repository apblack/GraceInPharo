generated-reduction actions
reduceActionForInterface2: nodes
	| result |
	result := nodes at: 2.
	result typeToken: (nodes at: 1).
	^ result