generated-reduction actions
reduceActionForBlockParameterList2: nodes
	| result |
	result := GraceBlockParameterListNode new.
	result addNode: (nodes at: 1) to: result params.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result params.
	^ result