generated-reduction actions
reduceActionForTypeArguments1: nodes
	| result |
	result := GraceTypeArgumentsNode new.
	result openTPToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result typeArgs.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result typeArgs.
	result closeTPToken: (nodes at: 4).
	^ result