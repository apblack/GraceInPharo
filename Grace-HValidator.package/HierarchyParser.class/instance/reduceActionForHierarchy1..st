generated-reduction actions
reduceActionForHierarchy1: nodes
	| result |
	result := HCheckerHierarchyNode new.
	result decl: (nodes at: 1).
	^ result