generated-reduction actions
reduceActionForObjectConstructor2: nodes
	| result |
	result := GraceObjectConstructorNode new.
	result objectToken: (nodes at: 1).
	result annotationList: (nodes at: 2).
	result leftBraceToken: (nodes at: 3).
	result addNode: (nodes at: 4) to: result _s.
	result rightBraceToken: (nodes at: 5).
	^ result