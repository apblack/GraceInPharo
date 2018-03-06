generated-reduction actions
reduceActionForAnnotationLabel1: nodes
	| result |
	result := GraceAnnotationLabelNode new.
	result addToken: (nodes at: 1) to: result annotationParts.
	^ result