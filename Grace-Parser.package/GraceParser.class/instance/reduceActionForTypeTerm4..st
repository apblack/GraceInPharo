generated-reduction actions
reduceActionForTypeTerm4: nodes
	| result |
	result := GraceTypeTermNode new.
	result addNode: (nodes at: 1) to: result ids.
	result addNode: (nodes at: 2) to: result typeArgs.
	^ result