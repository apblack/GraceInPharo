generated-reduction actions
reduceActionForBlockBody2: nodes
	| result |
	result := GraceBlockBodyNode new.
	result addNode: (nodes at: 1) to: result items.
	result addTokens: ((nodes at: 2) at: 1) to: result _s.
	result addNodes: ((nodes at: 2) at: 2) to: result items.
	result addToken: (nodes at: 3) to: result _s.
	^ result