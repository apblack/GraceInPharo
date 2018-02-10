generated-reduction actions
reduceActionForAssignmentRequest1: nodes
	| result |
	result := GraceAssignmentRequestNode new.
	result receiver: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result id: (nodes at: 3).
	result colonEqualToken: (nodes at: 4).
	result arg: (nodes at: 5).
	^ result