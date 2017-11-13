generated-reduction actions
reduceActionForSpecialTerm1: nodes
	| result |
	result := GraceSelfNode new.
	result selfToken: (nodes at: 1).
	^ result