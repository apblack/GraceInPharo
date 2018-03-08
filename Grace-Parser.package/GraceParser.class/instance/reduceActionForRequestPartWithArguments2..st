generated-reduction actions
reduceActionForRequestPartWithArguments2: nodes
	| result |
	result := GraceRequestPartWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result requestParts.
	result typeArg: (nodes at: 2).
	^ result