generated-reduction actions
reduceActionForNumeral3: nodes
	| result |
	result := GraceBasedRadixNumeralNode new.
	result basedRadixNumeralToken: (nodes at: 1).
	^ result