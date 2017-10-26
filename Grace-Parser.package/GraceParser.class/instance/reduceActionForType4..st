generated-reduction actions
reduceActionForType4: nodes
	| result |
	result := GraceTypeNode new.
	result typeToken: (nodes at: 1).
	result interface: (nodes at: 2).
	^ result