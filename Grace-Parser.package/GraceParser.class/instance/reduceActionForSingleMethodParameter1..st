generated-reduction actions
reduceActionForSingleMethodParameter1: nodes
	| result |
	result := GraceSingleMethodParameterNode new.
	result leftParenToken: (nodes at: 1).
	result name: (nodes at: 2).
	result type: (nodes at: 3).
	result rightParenToken: (nodes at: 4).
	^ result