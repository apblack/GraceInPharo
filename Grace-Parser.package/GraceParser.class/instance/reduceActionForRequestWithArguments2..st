generated-reduction actions
reduceActionForRequestWithArguments2: nodes
	| result |
	result := GraceRequestWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result nameParts.
	result typeArgs: (nodes at: 2).
	^ result