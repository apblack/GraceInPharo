generated-reduction actions
reduceActionForExcludeClause1: nodes
	| result |
	result := GraceExcludeClauseNode new.
	result excludeToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result