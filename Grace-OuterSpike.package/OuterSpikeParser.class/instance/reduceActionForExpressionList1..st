generated-reduction actions
reduceActionForExpressionList1: nodes
	| result |
	result := OSExpressionList new.
	result addNodes: ((nodes at: 1) at: 1) to: result exprs.
	result addTokens: ((nodes at: 1) at: 2) to: result newlineTokens.
	^ result