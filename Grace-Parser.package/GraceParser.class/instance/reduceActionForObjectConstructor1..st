generated-reduction actions
reduceActionForObjectConstructor1: nodes
	| result |
	result := GraceObjectConstructorNode new.
	result objectToken: (nodes at: 1).
	result annotationList: (nodes at: 2).
	result leftBraceToken: ((nodes at: 3) at: 1).
	result addObjects: ((nodes at: 3) at: 2) to: result items.
	result addNodes: ((nodes at: 3) at: 3) to: result _s.
	result rightBraceToken: ((nodes at: 3) at: 4).
	^ result