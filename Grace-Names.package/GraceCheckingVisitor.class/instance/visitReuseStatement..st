visit methods
visitReuseStatement: aReuseStatement
	| superExpr superExprOrigin |
	super visitReuseStatement: aReuseStatement.
	    "do this first, so that the reuse statement is rewritten"
	superExpr := aReuseStatement superExpr.
	superExprOrigin := superExpr receiver definingOccurence.
	superExprOrigin canBeOverridden ifTrue: [ 
		self checkerError: superExpr receiver printString ,' can''t be used as the receiver of a reuse expression, because it is possible to override it' 
			  node: superExpr ].
	superExprOrigin isAssignable ifTrue: [ 
		self checkerError: superExpr receiver printString ,' can''t be used as the receiver of a reuse expression, because it is a variable' 
			  node: superExpr ].
	self flag: 'other cases to exclude?'