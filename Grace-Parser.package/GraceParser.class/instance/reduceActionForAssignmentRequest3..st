generated-reduction actions
reduceActionForAssignmentRequest3: nodes
	| result |
	result := GraceAssignmentRequestNode new.
	result addTokens: (nodes at: 1) to: result outerDotTokens.
	result id: (nodes at: 2).
	result colonEqualToken: (nodes at: 3).
	result arg: (nodes at: 4).
	^ result