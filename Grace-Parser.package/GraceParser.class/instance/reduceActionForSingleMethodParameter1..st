generated-reduction actions
reduceActionForSingleMethodParameter1: nodes
	| result |
	result := GraceSingleMethodParameterNode new.
	result leftParenToken: (nodes at: 1).
	result parameter: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result