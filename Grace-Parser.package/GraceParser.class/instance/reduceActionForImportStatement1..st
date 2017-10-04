generated-reduction actions
reduceActionForImportStatement1: nodes
	| result |
	result := GraceImportStatementNode new.
	result importToken: (nodes at: 1).
	result resource: (nodes at: 2).
	result asToken: (nodes at: 3).
	result id: (nodes at: 4).
	^ result