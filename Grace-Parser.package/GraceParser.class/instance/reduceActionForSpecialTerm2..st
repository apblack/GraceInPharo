generated-reduction actions
reduceActionForSpecialTerm2: nodes
	| result |
	result := GraceBooleanNode new.
	result trueToken: (nodes at: 1).
	^ result