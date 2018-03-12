generated-reduction actions
reduceActionForBoolean1: nodes
	| result |
	result := GraceBooleanNode new.
	result trueToken: (nodes at: 1).
	^ result