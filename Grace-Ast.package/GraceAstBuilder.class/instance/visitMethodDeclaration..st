generated
visitMethodDeclaration: aDeclaration

	^ (GraceAttributeDeclarationAst 
				from: aDeclaration range
				declaring: (aDeclaration header acceptVisitor: self)
				rhs: (GraceListAst from: (aDeclaration items collect: [ :each | 
							each acceptVisitor: self ])))
			isMethod: true