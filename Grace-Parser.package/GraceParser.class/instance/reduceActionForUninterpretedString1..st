generated-reduction actions
reduceActionForUninterpretedString1: nodes
	| result |
	result := GraceUninterpretedStringNode new.
	result addObject: (nodes at: 1) to: result _s.
	result addToken: (nodes at: 2) to: result _Tokens.
	result chars: (nodes at: 3).
	result addObject: (nodes at: 4) to: result _s.
	result addToken: (nodes at: 5) to: result _Tokens.
	^ result