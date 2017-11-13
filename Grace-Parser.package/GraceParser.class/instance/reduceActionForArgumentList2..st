generated-reduction actions
reduceActionForArgumentList2: nodes
	| result |
	result := GraceArgumentListNode new.
	result leftParenToken: (nodes at: 1).
	result addObject: (nodes at: 2) to: result args.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addObjects: ((nodes at: 3) at: 2) to: result args.
	result rightParenToken: (nodes at: 4).
	^ result