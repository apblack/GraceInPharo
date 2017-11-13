generated-reduction actions
reduceActionForTypeTerm5: nodes
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result dotTokens.
	result addNode: (nodes at: 3) to: result ids.
	result addNode: (nodes at: 4) to: result typeArgs.
	^ result