generated-reduction actions
reduceActionForHierarchyDecl1: nodes
	| result |
	result := HCheckerHierarchyDeclNode new.
	result percenthierarchyToken: (nodes at: 1).
	result superNode: (nodes at: 2).
	result leftParenToken: (nodes at: 3).
	result subNodes: (nodes at: 4).
	result rightParenToken: (nodes at: 5).
	result semicolonToken: (nodes at: 6).
	^ result