generated-reduction actions
reduceActionForSelfRequest1: nodes
	| result |
	result := GraceSelfRequestNode new.
	result selfDotToken: (nodes at: 1).
	result request: (nodes at: 2).
	^ result