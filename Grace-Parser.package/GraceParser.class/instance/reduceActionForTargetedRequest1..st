generated-reduction actions
reduceActionForTargetedRequest1: nodes
	| result |
	result := GraceTargetedRequestNode new.
	result target: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result request: (nodes at: 3).
	^ result