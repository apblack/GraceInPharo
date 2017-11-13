generated-reduction actions
reduceActionForSequenceConstructor2: nodes
	| result |
	result := GraceSequenceConstructorNode new.
	result leftBracketToken: (nodes at: 1).
	result element: (nodes at: 2).
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addObjects: ((nodes at: 3) at: 2) to: result args.
	result rightBracketToken: (nodes at: 4).
	^ result