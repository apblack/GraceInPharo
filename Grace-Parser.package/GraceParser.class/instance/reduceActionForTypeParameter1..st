generated-reduction actions
reduceActionForTypeParameter1: nodes
	| result |
	result := GraceTypeParameterNode new.
	result addNode: (nodes at: 1) to: result parameters.
	^ result