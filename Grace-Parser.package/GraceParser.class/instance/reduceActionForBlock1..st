generated-reduction actions
reduceActionForBlock1: nodes
	| result |
	result := GraceBlockNode new.
	result leftBraceToken: (nodes at: 1).
	result parameters: ((nodes at: 2) at: 1).
	result arrowToken: ((nodes at: 2) at: 2).
	result body: (nodes at: 3).
	result rightBraceToken: (nodes at: 4).
	^ result