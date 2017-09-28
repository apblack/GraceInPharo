generated-reduction actions
reduceActionForSpecialTerm4: nodes
	| result |
	result := GraceSpecialTermNode new.
	result outerToken: (nodes at: 1).
	^ result