scope building
disambiguateSuperExpressionIn: useNode
	| superExpr |
	superExpr := useNode superExpr.
	superExpr isImplicitRequest
		ifTrue: [ ^ self rewriteImplicitRequest: superExpr ].
	superExpr isIdentifier
		ifTrue: [ ^ self rewriteIdentifier: superExpr ]