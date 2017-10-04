generated-reduction actions
reduceActionForDialectStatement1: nodes
	| result |
	result := GraceDialectStatementNode new.
	result dialectToken: (nodes at: 1).
	result resource: (nodes at: 2).
	^ result