generated-reduction actions
reduceActionForSelfType1: nodes
	| result |
	result := GraceSelfTypeNode new.
	result selfTypeToken: (nodes at: 1).
	^ result