generated-reduction actions
reduceActionForStringLiteral1: nodes
	| result |
	result := GraceStringLiteralNode new.
	result addObject: (nodes at: 1) to: result _s.
	result openQuote: (nodes at: 2).
	result chars: (nodes at: 3).
	result addObject: (nodes at: 4) to: result _s.
	result closeQuote: (nodes at: 5).
	^ result