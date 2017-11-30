generated-reduction actions
reduceActionForTypeOperatorExpression1: nodes
	| result |
	result := GraceTypeOperatorExpressionNode new.
	result term: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result ops.
	result addNodes: ((nodes at: 2) at: 2) to: result typeArgs.
	result addNodes: ((nodes at: 2) at: 3) to: result args.
	^ result