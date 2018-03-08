generated-reduction actions
reduceActionForRequestPartWithArguments1: nodes
	| result |
	result := GraceRequestPartWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result requestParts.
	result typeArg: (nodes at: 2).
	result addNode: (nodes at: 3) to: result argLists.
	result addTokens: ((nodes at: 4) at: 1) to: result requestParts.
	result addNodes: ((nodes at: 4) at: 2) to: result argLists.
	^ result