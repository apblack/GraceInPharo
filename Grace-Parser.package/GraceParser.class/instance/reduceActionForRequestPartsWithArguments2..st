generated-reduction actions
reduceActionForRequestPartsWithArguments2: nodes
	| result |
	result := GraceRequestPartsWithArgumentsNode new.
	result addToken: (nodes at: 1) to: result requestParts.
	result typeArgList: (nodes at: 2).
	^ result