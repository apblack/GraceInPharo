generated
visitDefDeclaration: aDeclaration
	| astNodeClass |
	astNodeClass := aDeclaration parent isObjectConstructor
			ifTrue: [ GraceAttributeDeclarationAst ] ifFalse: [ GraceTempDeclarationAst ].
	^ (astNodeClass 
			from: aDeclaration range
			declaring: (aDeclaration id acceptVisitor: self)
			rhs: (aDeclaration initializer acceptVisitor: self)) isDef: true