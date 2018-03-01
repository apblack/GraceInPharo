*grace-names
attributeScope
	| resultExpr |
	resultExpr := self items last.
	resultExpr isReturnStatement ifTrue: [ 
		resultExpr := resultExpr value ifNil: [^ GraceNameResolutionVisitor notFreshError: self] ].
	resultExpr isObjectConstructor ifTrue: [ ^ resultExpr scope ].
	^ resultExpr objectScopeInScope: resultExpr scope for: self
	
	