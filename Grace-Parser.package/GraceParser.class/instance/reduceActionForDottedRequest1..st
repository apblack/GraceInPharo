generated-reduction actions
reduceActionForDottedRequest1: nodes
	| result |
	result := GraceDottedRequestNode new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result request: (nodes at: 3).
	^ result