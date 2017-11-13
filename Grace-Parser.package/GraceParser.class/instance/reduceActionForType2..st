generated-reduction actions
reduceActionForType2: nodes
	| result |
	result := GraceTypeNode new.
	result term: (nodes at: 1).
	^ result