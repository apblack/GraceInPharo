generated-reduction actions
reduceActionForTypeParameterList2: nodes
	| result |
	result := GraceTypeParameterNode new.
	result openTPToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result parameters.
	result addTokens: ((nodes at: 3) at: 1) to: result _s.
	result addNodes: ((nodes at: 3) at: 2) to: result parameters.
	result closeTPToken: (nodes at: 4).
	^ result