generated-reduction actions
reduceActionForReturnTypeOption2: nodes
	| result |
	result := GraceTypeNode new.
	result arrowToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result