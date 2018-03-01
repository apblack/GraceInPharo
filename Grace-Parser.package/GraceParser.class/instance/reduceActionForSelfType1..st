generated-reduction actions
reduceActionForSelfType1: nodes
	| result |
	result := GraceSelfTypeNode new.
	result selfToken: (nodes at: 1).
	^ result