generated-reduction actions
reduceActionForBinaryMethodHeader1: nodes
	| result |
	result := GraceBinaryMethodHeaderNode new.
	result id: (nodes at: 1).
	result typeParameter: (nodes at: 2).
	result parameter: (nodes at: 3).
	^ result