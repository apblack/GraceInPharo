generated-reduction actions
reduceActionForImplicitRequest1: nodes
	| result |
	result := GraceImplicitRequestNode new.
	result request: (nodes at: 1).
	^ result