generated-reduction actions
reduceActionForInterfaceLiteral1: nodes
	| result |
	result := GraceInterfaceLiteralNode new.
	result leftBraceToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result _s.
	result rightBraceToken: (nodes at: 3).
	^ result