generated-reduction actions
reduceActionForSpecialTerm1: nodes
	| result |
	result := GraceSpecialTermNode new.
	result selfToken: (nodes at: 1).
	^ result