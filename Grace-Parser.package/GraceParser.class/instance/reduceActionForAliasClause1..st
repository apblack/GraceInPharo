generated-reduction actions
reduceActionForAliasClause1: nodes
	| result |
	result := GraceAliasClauseNode new.
	result aliasToken: (nodes at: 1).
	result newMethod: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result oldMethod: (nodes at: 4).
	^ result