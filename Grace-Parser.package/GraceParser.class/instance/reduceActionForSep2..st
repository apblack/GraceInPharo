generated-reduction actions
reduceActionForSep2: nodes
	| result |
	result := GraceSepNode new.
	result newlineToken: (nodes at: 1).
	^ result