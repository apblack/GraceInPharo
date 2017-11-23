generated-reduction actions
reduceActionForNumeral1: nodes
	| result |
	result := GraceDecimalNumeralNode new.
	result decimalNumeralToken: (nodes at: 1).
	^ result