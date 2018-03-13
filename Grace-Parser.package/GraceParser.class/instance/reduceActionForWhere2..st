generated-reduction actions
reduceActionForWhere2: nodes
	| result |
	result := GraceWhereNode new.
	result whereToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result conditions.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result conditions.
	^ result