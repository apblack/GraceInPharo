generated-reduction actions
reduceActionForSpecialTerm3: nodes
	| result |
	result := GraceSpecialTermNode new.
	result falseToken: (nodes at: 1).
	^ result