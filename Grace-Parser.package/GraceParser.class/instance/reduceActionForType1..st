generated-reduction actions
reduceActionForType1: nodes
	| result |
	result := GraceTypeNode new.
	result term: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result ops.
	result addNodes: ((nodes at: 2) at: 2) to: result typeArgs.
	result addObjects: ((nodes at: 2) at: 3) to: result args.
	^ result