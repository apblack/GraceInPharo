visitation
visitClassDeclaration: aClassDecl

	^ GraceMethodDeclAst 
				from: aClassDecl range
				scope: aClassDecl scope
				declaring: (aClassDecl variable)
				rhs: (GraceListAst with: 
							(GraceObjectConstructorAst 
								from: aClassDecl itemsRange
								scope: aClassDecl itemsScope
								inherits: (self inheritanceOf: aClassDecl)
								uses: (GraceListAst from: 
									(aClassDecl items 
										select: [ :each | each isUseStatement ]
										thenCollect: [ :each | each acceptVisitor: self ]))
								items: (GraceListAst from: 
									(aClassDecl items 
										reject: [ :each | each isReuseStatement ]
										thenCollect: [ :each | each acceptVisitor: self ]))))
				annotations: (GraceListAst from: 
					(aClassDecl annotations collect: [ :ann | ann acceptVisitor: self ]))
	  