generated-reduction actions
reduceActionForBinaryMethodHeader1: nodes
	| result |
	result := GraceBinaryMethodHeaderNode new.
	result operatorToken: (nodes at: 1).
	result typeParameters: (nodes at: 2).
	result parameter: (nodes at: 3).
	^ result