generated-reduction actions
reduceActionForTypeTerm3: nodes
	| result |
	result := GraceTypeTermNode new.
	result typeToken: (nodes at: 1).
	result interface: (nodes at: 2).
	^ result