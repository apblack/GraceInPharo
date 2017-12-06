generated-reduction actions
reduceActionForInterface1: nodes
	| result |
	result := nodes at: 2.
	result interfaceToken: (nodes at: 1).
	^ result