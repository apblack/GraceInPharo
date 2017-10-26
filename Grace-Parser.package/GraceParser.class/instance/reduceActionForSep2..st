generated-reduction actions
reduceActionForSep2: nodes
	| result |
	result := GraceSepNode new.
	result commentary: (nodes at: 1).
	result newlineToken: (nodes at: 2).
	^ result