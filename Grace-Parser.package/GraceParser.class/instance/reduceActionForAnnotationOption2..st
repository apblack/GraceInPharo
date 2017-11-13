generated-reduction actions
reduceActionForAnnotationOption2: nodes
	| result |
	result := GraceAnnotationOptionNode new.
	result isToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result anns.
	result addTokens: ((nodes at: 3) at: 1) to: result commaTokens.
	result addNodes: ((nodes at: 3) at: 2) to: result anns.
	^ result