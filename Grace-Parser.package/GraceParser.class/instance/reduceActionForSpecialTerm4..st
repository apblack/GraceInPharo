generated-reduction actions
reduceActionForSpecialTerm4: nodes
	| result |
	result := GraceOuterNode new.
	result outersToken: (nodes at: 1).
	^ result