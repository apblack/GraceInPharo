generated-reduction actions
reduceActionForBlock1: nodes
	| result |
	result := GraceBlockNode new.
	result leftBraceToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result _s.
	result parameterList: (nodes at: 3).
	result arrowToken: (nodes at: 4).
	result addNode: (nodes at: 5) to: result _s.
	result addObjects: ((nodes at: 6) at: 1) to: result items.
	result addNodes: ((nodes at: 6) at: 2) to: result _s.
	result rightBraceToken: (nodes at: 7).
	^ result