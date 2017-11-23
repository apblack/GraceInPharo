generated-reduction actions
reduceActionForNumeral2: nodes
	| result |
	result := GraceBaseExponentNumeralNode new.
	result baseExponentNumeralToken: (nodes at: 1).
	^ result