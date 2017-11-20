generated-reduction actions
reduceActionForSs1: nodes
	| result |
	result := GraceSsNode new.
	result semicolonToken: (nodes at: 1).
	^ result