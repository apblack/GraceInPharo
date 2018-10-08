generated-reduction actions
reduceActionForObjectConstructor1: nodes
	| result |
	result := GraceObjectConstructorNode new.
	result objectToken: (nodes at: 1).
	result annotationList: (nodes at: 2).
	result leftBraceToken: (nodes at: 3).
	result addObject: (nodes at: 4) to: result items.
	result addNodes: ((nodes at: 5) at: 1) to: result _s.
	result addObjects: ((nodes at: 5) at: 2) to: result items.
	result rightBraceToken: (nodes at: 6).
	^ result