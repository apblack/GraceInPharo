generated-reduction actions
reduceActionForType3: nodes
	| result |
	result := GraceTypeNode new.
	result interfaceToken: (nodes at: 1).
	result interface: (nodes at: 2).
	^ result