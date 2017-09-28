generated-reduction actions
reduceActionForAnnotation4: nodes
	| result |
	result := GraceAnnotationNode new.
	result readableToken: (nodes at: 1).
	^ result