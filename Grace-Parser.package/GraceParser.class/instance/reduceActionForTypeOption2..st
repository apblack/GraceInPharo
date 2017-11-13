generated-reduction actions
reduceActionForTypeOption2: nodes
	| result |
	result := GraceTypeNode new.
	result colonToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result