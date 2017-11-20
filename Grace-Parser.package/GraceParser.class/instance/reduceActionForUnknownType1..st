generated-reduction actions
reduceActionForUnknownType1: nodes
	| result |
	result := GraceUnknownTypeNode new.
	result unknownToken: (nodes at: 1).
	^ result