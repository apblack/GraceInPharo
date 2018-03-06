generated-reduction actions
reduceActionForAnnotationLabel3: nodes
	| result |
	result := GraceAnnotationLabelNode new.
	result addToken: (nodes at: 1) to: result annotationParts.
	result typeArg: (nodes at: 2).
	^ result