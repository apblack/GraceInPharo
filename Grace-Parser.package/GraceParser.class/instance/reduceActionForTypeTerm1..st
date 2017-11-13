generated-reduction actions
reduceActionForTypeTerm1: nodes
	| result |
	result := GraceTypeTermNode new.
	result unknownToken: (nodes at: 1).
	^ result