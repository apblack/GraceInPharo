generated-reduction actions
reduceActionForSignature1: nodes
	| result |
	result := GraceSignatureNode new.
	result header: (nodes at: 1).
	result returns: (nodes at: 2).
	^ result