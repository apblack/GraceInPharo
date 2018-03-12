generated-reduction actions
reduceActionForSelf1: nodes
	| result |
	result := GraceSelfNode new.
	result selfToken: (nodes at: 1).
	^ result