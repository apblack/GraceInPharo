generated-reduction actions
reduceActionForArgumentList1: nodes
	| result |
	result := GraceArgumentListNode new.
	result addNode: (nodes at: 1) to: result args.
	^ result