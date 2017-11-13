generated-reduction actions
reduceActionForImport1: nodes
	| result |
	result := GraceImportNode new.
	result importToken: (nodes at: 1).
	result resource: (nodes at: 2).
	result asToken: (nodes at: 3).
	result id: (nodes at: 4).
	result annotation: (nodes at: 5).
	^ result