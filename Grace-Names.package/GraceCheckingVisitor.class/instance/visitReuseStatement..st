visit methods
visitReuseStatement: aReuseStatement
	| superExpr superExprOrigin |
	super visitReuseStatement: aReuseStatement.
	    "do this first, so that the reuse statement is rewritten"
	superExpr := aReuseStatement superExpr.
	superExprOrigin := superExpr receiver definingOccurence.
	superExprOrigin canBeOverridden ifTrue: [ 
		self reuseError: 
				('{1} can''t be used as the superExpression in {2} statement, because it can be overridden' 
				format: {superExpr description . 
						 	aReuseStatement isInheritStatement 
								ifTrue: ['an inherit'] 
								ifFalse: ['a use']} )
			  node: superExpr ].
	superExprOrigin isAssignable ifTrue: [ 
		self reuseError: superExpr receiver printString ,' can''t be used as the receiver of a reuse expression, because it is a variable' 
			  node: superExpr ].
	self flag: 'other cases to exclude?'