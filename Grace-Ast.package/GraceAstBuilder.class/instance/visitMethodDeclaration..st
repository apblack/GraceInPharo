generated
visitMethodDeclaration: aDeclaration

	^ (GraceAttributeDeclarationAst 
				from: aDeclaration range
				scope: aDeclaration scope
				declaring: (aDeclaration header acceptVisitor: self)
				rhs: (GraceListAst from: (aDeclaration items collect: [ :each | 
							each acceptVisitor: self ]))
				annotations: (aDeclaration annotations 
						ifNil: [ GraceListAst new ]
						ifNotNil: [ :anns | anns acceptVisitor: self ] )
	  ) isMethod: true