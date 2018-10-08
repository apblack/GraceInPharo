generated-reduction actions
reduceActionForObjectConstructor2: nodes
	| result |
	result := GraceObjectConstructorNode new.
	result objectToken: (nodes at: 1).
	result annotationList: (nodes at: 2).
	result leftBraceToken: (nodes at: 3).
	result rightBraceToken: (nodes at: 4).
	^ result