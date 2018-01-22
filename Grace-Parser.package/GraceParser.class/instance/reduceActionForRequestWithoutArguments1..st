generated-reduction actions
reduceActionForRequestWithoutArguments1: nodes
	| result |
	result := GraceRequestWithoutArgumentsNode new.
	result requestPart: (nodes at: 1).
	^ result