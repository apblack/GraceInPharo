generated-reduction actions
reduceActionForAnnotation3: nodes
	| result |
	result := GraceAnnotationNode new.
	result overrideToken: (nodes at: 1).
	^ result