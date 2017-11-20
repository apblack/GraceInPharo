generated-reduction actions
reduceActionForTypeTerm4: nodes
	| result |
	result := GraceTypeTermNode new.
	result id: (nodes at: 1).
	result typeArg: (nodes at: 2).
	^ result