generated-reduction actions
reduceActionForType4: nodes
	| result |
	result := GraceTypeNode new.
	result id: (nodes at: 1).
	result typeArgList: (nodes at: 2).
	^ result