generated-reduction actions
reduceActionForRequestWithArguments2: nodes
	| result |
	result := GraceRequestWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result requestParts.
	result typeArg: (nodes at: 2).
	^ result