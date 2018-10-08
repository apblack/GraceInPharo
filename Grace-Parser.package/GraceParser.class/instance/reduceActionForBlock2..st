generated-reduction actions
reduceActionForBlock2: nodes
	| result |
	result := GraceBlockNode new.
	result leftBraceToken: (nodes at: 1).
	result addObjects: ((nodes at: 2) at: 1) to: result items.
	result addNodes: ((nodes at: 2) at: 2) to: result _s.
	result rightBraceToken: (nodes at: 3).
	^ result