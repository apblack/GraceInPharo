generated-reduction actions
reduceActionForBlockBody1: nodes
	| result |
	result := GraceBlockBodyNode new.
	result item: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result semicolonTokens.
	result addNodes: ((nodes at: 2) at: 2) to: result statements.
	^ result