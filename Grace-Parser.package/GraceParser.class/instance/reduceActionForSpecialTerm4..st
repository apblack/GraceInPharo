generated-reduction actions
reduceActionForSpecialTerm4: nodes
	| result |
	result := GraceOuterNode new.
	result outerToken: (nodes at: 1).
	^ result