generated
visitTypeDeclaration: aTypeDecl
	^ (GraceTypeDeclAst 
			from: aTypeDecl range
			scope: aTypeDecl scope
			declaring: (aTypeDecl id acceptVisitor: self)
			rhs: (GraceBuildType from: aTypeDecl value) 
			annotations: (GraceListAst from: (
				aTypeDecl annotations collect: [ :ann | ann acceptVisitor: self ] ))
	  ) isAttribute: aTypeDecl parent isObjectConstructor