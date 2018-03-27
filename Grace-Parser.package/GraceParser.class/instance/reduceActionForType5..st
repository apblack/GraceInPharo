generated-reduction actions
reduceActionForType5: nodes
	| result |
	result := GraceTypeNode new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result request: (nodes at: 3).
	result typeArgList: (nodes at: 4).
	^ result