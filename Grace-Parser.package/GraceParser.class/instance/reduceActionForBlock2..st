generated-reduction actions
reduceActionForBlock2: nodes
	| result |
	result := GraceBlockNode new.
	result leftBraceToken: (nodes at: 1).
	result body: (nodes at: 2).
	result rightBraceToken: (nodes at: 3).
	^ result