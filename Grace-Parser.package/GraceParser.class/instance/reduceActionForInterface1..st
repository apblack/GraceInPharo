generated-reduction actions
reduceActionForInterface1: nodes
	| result |
	result := GraceInterfaceNode new.
	result interfaceToken: (nodes at: 1).
	result interface: (nodes at: 2).
	^ result