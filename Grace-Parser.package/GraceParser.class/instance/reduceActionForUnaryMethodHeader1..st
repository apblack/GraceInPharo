generated-reduction actions
reduceActionForUnaryMethodHeader1: nodes
	| result |
	result := GraceUnaryMethodHeaderNode new.
	result prefixToken: (nodes at: 1).
	result operatorToken: (nodes at: 2).
	^ result