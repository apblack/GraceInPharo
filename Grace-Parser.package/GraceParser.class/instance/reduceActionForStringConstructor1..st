generated-reduction actions
reduceActionForStringConstructor1: nodes
	| result |
	result := GraceStringConstructorNode new.
	result addObject: (nodes at: 1) to: result _s.
	result openQuote: (nodes at: 2).
	result addToken: (nodes at: 3) to: result stringSegments.
	result addObjects: ((nodes at: 4) at: 1) to: result _s.
	result addTokens: ((nodes at: 4) at: 2) to: result leftBraceTokens.
	result addObjects: ((nodes at: 4) at: 3) to: result interpolations.
	result addTokens: ((nodes at: 4) at: 4) to: result rightBraceTokens.
	result addTokens: ((nodes at: 4) at: 5) to: result stringSegments.
	result addObject: (nodes at: 5) to: result _s.
	result closeQuote: (nodes at: 6).
	^ result