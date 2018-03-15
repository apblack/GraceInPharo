generated-reduction actions
reduceActionForParameterizedMethodHeader1: nodes
	| result |
	result := GraceParameterizedMethodHeaderNode new.
	result addToken: (nodes at: 1) to: result parts.
	result typeParameters: (nodes at: 2).
	result addNode: (nodes at: 3) to: result parameterLists.
	result addTokens: ((nodes at: 4) at: 1) to: result parts.
	result addNodes: ((nodes at: 4) at: 2) to: result parameterLists.
	^ result