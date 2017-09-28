generated-reduction actions
reduceActionForSpecialTerm2: nodes
	| result |
	result := GraceSpecialTermNode new.
	result trueToken: (nodes at: 1).
	^ result