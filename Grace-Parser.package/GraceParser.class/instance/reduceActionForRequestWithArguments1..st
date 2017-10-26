generated-reduction actions
reduceActionForRequestWithArguments1: nodes
	| result |
	result := GraceRequestWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result nameParts.
	result typeArgs: (nodes at: 2).
	result addNode: (nodes at: 3) to: result argLists.
	result addTokens: ((nodes at: 4) at: 1) to: result nameParts.
	result addNodes: ((nodes at: 4) at: 2) to: result argLists.
	^ result