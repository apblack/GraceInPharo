generated-reduction actions
reduceActionForType2: nodes
	| result |
	result := GraceTypeNode new.
	result unknownToken: (nodes at: 1).
	^ result