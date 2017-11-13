generated-reduction actions
reduceActionForSpecialTerm3: nodes
	| result |
	result := GraceBooleanNode new.
	result falseToken: (nodes at: 1).
	^ result