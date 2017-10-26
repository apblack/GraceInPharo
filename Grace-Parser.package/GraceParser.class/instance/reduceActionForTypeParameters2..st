generated-reduction actions
reduceActionForTypeParameters2: nodes
	| result |
	result := GraceTypeParametersNode new.
	result openTPToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result params.
	result addTokens: ((nodes at: 3) at: 1) to: result _s.
	result addNodes: ((nodes at: 3) at: 2) to: result params.
	result closeTPToken: (nodes at: 4).
	^ result