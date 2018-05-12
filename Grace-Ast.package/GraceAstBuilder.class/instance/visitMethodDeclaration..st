visitation
visitMethodDeclaration: aDeclaration

	^ (GraceMethodDeclAst 
				from: aDeclaration range
				scope: aDeclaration scope
				declaring: (aDeclaration variable)
				rhs: (GraceListAst from: (aDeclaration items collect: [ :each | 
							each acceptVisitor: self ]))
				annotations: (GraceListAst from: 
					(aDeclaration annotations collect: [ :ann | ann acceptVisitor: self ]))
	  ) isOnceMethod: aDeclaration onceToken isNotNil