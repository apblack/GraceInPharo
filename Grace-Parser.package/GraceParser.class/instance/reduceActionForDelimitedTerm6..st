generated-reduction actions
reduceActionForDelimitedTerm6: nodes
	| result |
	result := GraceExpressionNode new.
	result leftParenToken: (nodes at: 1).
	result expr: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result