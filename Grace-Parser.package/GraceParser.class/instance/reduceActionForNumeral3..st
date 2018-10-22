generated-reduction actions
reduceActionForNumeral3: nodes
	| result |
	result := GraceExplicitRadixNumeralNode new.
	result explicitRadixNumeralToken: (nodes at: 1).
	^ result