generated
visitDefDeclaration: aDeclaration
	| astNodeClass |
	astNodeClass := aDeclaration parent isObjectConstructor
			ifTrue: [ GraceAttributeDeclarationAst ] ifFalse: [ GraceTempDeclarationAst ].
	^ (astNodeClass 
			from: aDeclaration range
			scope: aDeclaration scope
			declaring: (aDeclaration id acceptVisitor: self)
			rhs: (aDeclaration initializer 
						ifNil: [ GraceNullAst new ]
						ifNotNil: [ :init | init acceptVisitor: self ] )
			annotations: (aDeclaration annotations 
						ifNil: [ GraceListAst new ]
						ifNotNil: [ :anns | anns acceptVisitor: self ] )
	  ) isDef: true