generated-reduction actions
reduceActionForSequenceConstructor1: nodes
	| result |
	result := GraceSequenceConstructorNode new.
	result leftBracketToken: (nodes at: 1).
	result rightBracketToken: (nodes at: 2).
	^ result