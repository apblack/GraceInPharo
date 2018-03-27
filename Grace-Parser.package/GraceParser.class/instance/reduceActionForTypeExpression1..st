generated-reduction actions
reduceActionForTypeExpression1: nodes
	| result |
	result := GraceTypeExpressionNode new.
	result term: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result ops.
	result addNodes: ((nodes at: 2) at: 2) to: result typeArgList.
	result addNodes: ((nodes at: 2) at: 3) to: result args.
	^ result