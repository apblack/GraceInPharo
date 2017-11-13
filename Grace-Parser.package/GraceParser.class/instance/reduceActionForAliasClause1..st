generated-reduction actions
reduceActionForAliasClause1: nodes
	| result |
	result := GraceAliasClauseNode new.
	result aliasToken: (nodes at: 1).
	result newIdentifier: (nodes at: 2).
	result equalToken: (nodes at: 3).
	result oldIdentifier: (nodes at: 4).
	^ result