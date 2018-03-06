generated-reduction actions
reduceActionForAnnotationLabel4: nodes
	| result |
	result := GraceAnnotationLabelNode new.
	result addToken: (nodes at: 1) to: result annotationParts.
	result addNode: (nodes at: 2) to: result argLists.
	result addTokens: ((nodes at: 3) at: 1) to: result annotationParts.
	result addNodes: ((nodes at: 3) at: 2) to: result argLists.
	^ result