generated-reduction actions
reduceActionForIdentifier1: nodes
	| result |
	result := GraceIdentifierNode new.
	result id: (nodes at: 1).
	^ result