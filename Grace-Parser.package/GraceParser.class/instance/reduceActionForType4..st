generated-reduction actions
reduceActionForType4: nodes
	| result |
	result := GraceTypeNode new.
	result id: (nodes at: 1).
	result typeArg: (nodes at: 2).
	^ result