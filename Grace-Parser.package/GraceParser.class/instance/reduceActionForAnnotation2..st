generated-reduction actions
reduceActionForAnnotation2: nodes
	| result |
	result := GraceAnnotationNode new.
	result confidentialToken: (nodes at: 1).
	^ result