generated-reduction actions
reduceActionForDialect1: nodes
	| result |
	result := GraceDialectNode new.
	result dialectToken: (nodes at: 1).
	result resource: (nodes at: 2).
	^ result