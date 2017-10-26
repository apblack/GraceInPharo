generated-reduction actions
reduceActionForNumeral3: nodes
	| result |
	result := GraceNumeralNode new.
	result basedRadixNumeralToken: (nodes at: 1).
	^ result