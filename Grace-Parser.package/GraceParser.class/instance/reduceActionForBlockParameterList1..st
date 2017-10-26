generated-reduction actions
reduceActionForBlockParameterList1: nodes
	| result |
	result := GraceBlockParameterListNode new.
	result addNode: (nodes at: 1) to: result params.
	^ result