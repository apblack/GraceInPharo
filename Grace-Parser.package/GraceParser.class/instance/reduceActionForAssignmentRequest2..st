generated-reduction actions
reduceActionForAssignmentRequest2: nodes
	| result |
	result := GraceAssignmentRequestNode new.
	result selfDotToken: (nodes at: 1).
	result id: (nodes at: 2).
	result colonEqualToken: (nodes at: 3).
	result arg: (nodes at: 4).
	^ result