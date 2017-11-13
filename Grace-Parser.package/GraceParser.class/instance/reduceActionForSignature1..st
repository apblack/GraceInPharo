generated-reduction actions
reduceActionForSignature1: nodes
	| result |
	result := GraceSignatureNode new.
	result methIdentifier: (nodes at: 1).
	result returnType: (nodes at: 2).
	^ result