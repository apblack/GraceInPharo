generated-reduction actions
reduceActionForNumeral2: nodes
	| result |
	result := GraceNumeralNode new.
	result baseExponentNumeralToken: (nodes at: 1).
	^ result