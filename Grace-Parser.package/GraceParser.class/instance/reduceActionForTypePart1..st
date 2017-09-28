generated-reduction actions
reduceActionForTypePart1: nodes
	| result |
	result := nodes at: 2.
	result colonToken: (nodes at: 1).
	^ result