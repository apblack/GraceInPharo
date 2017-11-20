generated-reduction actions
reduceActionForObjectConstructor2: nodes
	| result |
	result := GraceObjectConstructorNode new.
	result objectToken: (nodes at: 1).
	result leftBraceToken: (nodes at: 2).
	result addNode: (nodes at: 3) to: result _s.
	result rightBraceToken: (nodes at: 4).
	^ result