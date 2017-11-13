generated-reduction actions
reduceActionForAnnotation1: nodes
	| result |
	result := GraceAnnotationNode new.
	result publicToken: (nodes at: 1).
	^ result