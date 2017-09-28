generated-reduction actions
reduceActionForObjectConstructor1: nodes
	| result |
	result := GraceObjectConstructorNode new.
	result objectToken: (nodes at: 1).
	result leftBraceToken: (nodes at: 2).
	result body: (nodes at: 3).
	result rightBraceToken: (nodes at: 4).
	^ result