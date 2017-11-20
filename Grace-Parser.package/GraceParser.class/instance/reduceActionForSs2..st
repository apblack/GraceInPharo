generated-reduction actions
reduceActionForSs2: nodes
	| result |
	result := GraceSsNode new.
	result newlineToken: (nodes at: 1).
	^ result