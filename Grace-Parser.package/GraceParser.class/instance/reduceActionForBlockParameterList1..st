generated-reduction actions
reduceActionForBlockParameterList1: nodes
	| result |
	result := GraceBlockParameterListNode new.
	result addNode: (nodes at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result parameters.
	^ result