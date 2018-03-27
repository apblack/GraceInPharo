generated
visitVarDeclaration: aDeclaration
	^ (GraceVariableDeclAst 
			from: aDeclaration range
			scope: aDeclaration scope
			declaring: (aDeclaration id acceptVisitor: self)
			rhs: (aDeclaration initializer 
						ifNil: [ GraceNullAst new ]
						ifNotNil: [ :init | init acceptVisitor: self ] )
			annotations: (GraceListAst from: (
				aDeclaration annotations collect: [ :ann | ann acceptVisitor: self ] ))
	  ) isVar: true;
	    isAttribute: aDeclaration parent isObjectConstructor