generated-reduction actions
reduceActionForBoolean2: nodes
	| result |
	result := GraceBooleanNode new.
	result falseToken: (nodes at: 1).
	^ result