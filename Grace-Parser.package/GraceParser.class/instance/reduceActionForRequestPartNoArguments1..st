generated-reduction actions
reduceActionForRequestPartNoArguments1: nodes
	| result |
	result := GraceRequestPartNoArgumentsNode new.
	result requestPart: (nodes at: 1).
	^ result