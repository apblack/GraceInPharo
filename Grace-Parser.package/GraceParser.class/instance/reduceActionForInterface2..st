generated-reduction actions
reduceActionForInterface2: nodes
	| result |
	result := GraceInterfaceNode new.
	result typeToken: (nodes at: 1).
	result interface: (nodes at: 2).
	^ result