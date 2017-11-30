generated-reduction actions
reduceActionForTypeTerm4: nodes
	| result |
	result := GraceTypeTermNode new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result id: (nodes at: 3).
	result typeArg: (nodes at: 4).
	^ result