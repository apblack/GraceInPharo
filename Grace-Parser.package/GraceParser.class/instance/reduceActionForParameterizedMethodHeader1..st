generated-reduction actions
reduceActionForParameterizedMethodHeader1: nodes
	| result |
	result := GraceParameterizedMethodHeaderNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result parts.
	result addNodes: ((nodes at: 1) at: 2) to: result typeParameters.
	result addNodes: ((nodes at: 1) at: 3) to: result parameterses.
	^ result