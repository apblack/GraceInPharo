scope building
disambiguateSuperExpressionIn: useNode
	| superExpr |
	superExpr := useNode superExpr.
	superExpr isImplicitRequest
		ifTrue: [ ^ GraceNodeRewriter rewriteImplicitRequest: superExpr ].
	superExpr isIdentifier
		ifTrue: [ ^ GraceNodeRewriter rewriteIdentifier: superExpr ]