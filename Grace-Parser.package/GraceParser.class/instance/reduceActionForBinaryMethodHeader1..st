generated-reduction actions
reduceActionForBinaryMethodHeader1: nodes
	| result |
	result := GraceBinaryMethodHeaderNode new.
	result name: (nodes at: 1).
	result param: (nodes at: 2).
	^ result