generated-reduction actions
reduceActionForSs3: nodes
	| result |
	result := GraceSsNode new.
	result ss: (nodes at: 1).
	result semicolonToken: ((nodes at: 2) at: 1).
	result newlineToken: ((nodes at: 2) at: 2).
	^ result