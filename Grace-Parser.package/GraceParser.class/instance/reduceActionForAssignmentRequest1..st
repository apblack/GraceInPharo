generated-reduction actions
reduceActionForAssignmentRequest1: nodes
	| result |
	result := GraceAssignmentRequestNode new.
	result target: (nodes at: 1).
	result dotToken: (nodes at: 2).
	result name: (nodes at: 3).
	result colonEqualToken: (nodes at: 4).
	result arg: (nodes at: 5).
	^ result