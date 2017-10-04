generated-reduction actions
reduceActionForStandaloneComment1: nodes
	| result |
	result := GraceStandaloneCommentNode new.
	result blanklineToken: (nodes at: 1).
	result commentary: (nodes at: 2).
	result newlineToken: (nodes at: 3).
	^ result