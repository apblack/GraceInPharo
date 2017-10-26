generated-reduction actions
reduceActionForType1: nodes
	| result |
	result := GraceTypeNode new.
	result id: (nodes at: 1).
	result typeargs: (nodes at: 2).
	^ result