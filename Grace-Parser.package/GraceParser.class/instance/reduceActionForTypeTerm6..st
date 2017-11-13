generated-reduction actions
reduceActionForTypeTerm6: nodes
	| result |
	result := GraceTypeTermNode new.
	result leftParenToken: (nodes at: 1).
	result type: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result