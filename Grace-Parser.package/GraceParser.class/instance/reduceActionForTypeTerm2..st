generated-reduction actions
reduceActionForTypeTerm2: nodes
	| result |
	result := GraceTypeTermNode new.
	result interfaceToken: (nodes at: 1).
	result interface: (nodes at: 2).
	^ result