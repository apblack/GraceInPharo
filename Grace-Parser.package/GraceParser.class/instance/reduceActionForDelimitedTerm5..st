generated-reduction actions
reduceActionForDelimitedTerm5: nodes
	| result |
	result := GraceDelimitedTermNode new.
	result leftParenToken: (nodes at: 1).
	result expr: (nodes at: 2).
	result rightParenToken: (nodes at: 3).
	^ result