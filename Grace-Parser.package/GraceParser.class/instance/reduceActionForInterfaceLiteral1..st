generated-reduction actions
reduceActionForInterfaceLiteral1: nodes
	| result |
	result := GraceInterfaceLiteralNode new.
	result leftBraceToken: (nodes at: 1).
	result rightBraceToken: (nodes at: 2).
	^ result