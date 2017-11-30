generated-reduction actions
reduceActionForTypeTerm3: nodes
	| result |
	result := GraceTypeTermNode new.
	result id: (nodes at: 1).
	result typeArg: (nodes at: 2).
	^ result