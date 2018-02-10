generated-reduction actions
reduceActionForExplicitRequest1: nodes
	| result |
	result := GraceExplicitRequestNode new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result request: (nodes at: 3).
	^ result