generated-reduction actions
reduceActionForRequestPartsWithArguments1: nodes
	| result |
	result := GraceRequestPartsWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result requestParts.
	result typeArgList: (nodes at: 2).
	result addNode: (nodes at: 3) to: result argLists.
	result addTokens: ((nodes at: 4) at: 1) to: result requestParts.
	result addNodes: ((nodes at: 4) at: 2) to: result argLists.
	^ result