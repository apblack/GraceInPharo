generated-reduction actions
reduceActionForUnaryRequest1: nodes
	| result |
	result := GraceUnaryRequestNode new.
	result op: (nodes at: 1).
	result typeArgs: (nodes at: 2).
	result receiver: (nodes at: 3).
	^ result