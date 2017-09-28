generated-reduction actions
reduceActionForStatementSequence2: nodes
	| result |
	result := GraceStatementSequenceNode new.
	result addNode: (nodes at: 1) to: result statements.
	result addTokens: ((nodes at: 2) at: 1) to: result semicolonTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result statements.
	^ result