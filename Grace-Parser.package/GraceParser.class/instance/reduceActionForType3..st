generated-reduction actions
reduceActionForType3: nodes
	| result |
	result := GraceTypeNode new.
	result id: (nodes at: 1).
	result typeArg: (nodes at: 2).
	^ result