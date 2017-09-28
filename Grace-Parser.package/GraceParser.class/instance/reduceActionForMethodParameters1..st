generated-reduction actions
reduceActionForMethodParameters1: nodes
	| result |
	result := GraceMethodParametersNode new.
	result leftParenToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result names.
	result addNode: (nodes at: 3) to: result types.
	result addTokens: ((nodes at: 4) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 4) at: 2) to: result names.
	result addNodes: ((nodes at: 4) at: 3) to: result types.
	result rightParenToken: (nodes at: 5).
	^ result