generated
visitTypeDeclaration: aTypeDecl
	^ (GraceTypeDeclAst 
			from: aTypeDecl range
			scope: aTypeDecl scope
			declaring: (aTypeDecl id acceptVisitor: self)
			rhs: (aTypeDecl value acceptVisitor: GraceBuildType new) 
			annotations: (GraceListAst from: (
				aTypeDecl annotations collect: [ :ann | ann acceptVisitor: self ] ))
	  ) isAttribute: aTypeDecl parent isObjectConstructor