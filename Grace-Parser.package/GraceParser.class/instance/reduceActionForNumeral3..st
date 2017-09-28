generated-reduction actions
reduceActionForNumeral3: nodes
	| result |
	result := GraceNumeralNode new.
	result radixNumeralToken: (nodes at: 1).
	^ result