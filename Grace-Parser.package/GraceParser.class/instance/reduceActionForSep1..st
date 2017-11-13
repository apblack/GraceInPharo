generated-reduction actions
reduceActionForSep1: nodes
	| result |
	result := GraceSepNode new.
	result semicolonToken: (nodes at: 1).
	^ result