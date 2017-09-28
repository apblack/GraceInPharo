generated-reduction actions
reduceActionForAnnotation5: nodes
	| result |
	result := GraceAnnotationNode new.
	result writableToken: (nodes at: 1).
	^ result