generated-reduction actions
reduceActionForBlock1: nodes
	| result |
	result := GraceBlockNode new.
	result leftBraceToken: (nodes at: 1).
	result parameterList: (nodes at: 2).
	result arrowToken: (nodes at: 3).
	result addNode: (nodes at: 4) to: result _s.
	result addObjects: ((nodes at: 5) at: 1) to: result items.
	result addNodes: ((nodes at: 5) at: 2) to: result _s.
	result rightBraceToken: (nodes at: 6).
	^ result