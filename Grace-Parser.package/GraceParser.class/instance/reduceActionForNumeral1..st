generated-reduction actions
reduceActionForNumeral1: nodes
	| result |
	result := GraceNumeralNode new.
	result decimalNumeralToken: (nodes at: 1).
	^ result