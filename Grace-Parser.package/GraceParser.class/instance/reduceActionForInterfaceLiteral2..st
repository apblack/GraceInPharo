generated-reduction actions
reduceActionForInterfaceLiteral2: nodes
	| result |
	result := GraceInterfaceLiteralNode new.
	result leftBraceToken: (nodes at: 1).
	result addNode: ((nodes at: 2) at: 1) to: result methods.
	result addNode: ((nodes at: 2) at: 2) to: result typeDecls.
	result addNodes: ((nodes at: 3) at: 1) to: result _s.
	result addNodes: ((nodes at: 3) at: 2) to: result methods.
	result addNodes: ((nodes at: 3) at: 3) to: result typeDecls.
	result rightBraceToken: (nodes at: 4).
	^ result