generated-reduction actions
reduceActionForAnnotationLabel2: nodes
	| result |
	result := GraceAnnotationLabelNode new.
	result addToken: (nodes at: 1) to: result annotationParts.
	result typeArg: (nodes at: 2).
	result addNode: (nodes at: 3) to: result argLists.
	result addTokens: ((nodes at: 4) at: 1) to: result annotationParts.
	result addNodes: ((nodes at: 4) at: 2) to: result argLists.
	^ result