generated-reduction actions
reduceActionForSequenceConstructor2: nodes
	| result |
	result := GraceSequenceConstructorNode new.
	result leftBracketToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result elements.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result elements.
	result rightBracketToken: (nodes at: 4).
	^ result