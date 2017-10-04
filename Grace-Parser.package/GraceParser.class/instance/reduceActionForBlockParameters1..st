generated-reduction actions
reduceActionForBlockParameters1: nodes
	| result |
	result := GraceBlockParametersNode new.
	result addToken: (nodes at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addTokens: ((nodes at: 2) at: 2) to: result parameters.
	^ result