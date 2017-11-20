generated-reduction actions
reduceActionForTypeParameter1: nodes
	| result |
	result := GraceTypeParameterNode new.
	result id: (nodes at: 1).
	^ result