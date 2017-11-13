generated-reduction actions
reduceActionForRequestWithArguments2: nodes
	| result |
	result := GraceRequestWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result IdentifierParts.
	result typeArg: (nodes at: 2).
	^ result