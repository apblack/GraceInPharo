generated-reduction actions
reduceActionForSingleMethodParameter1: nodes
	| result |
	result := GraceParameterNode new.
	result leftParenToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result parameters.
	result rightParenToken: (nodes at: 3).
	^ result