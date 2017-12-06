visit methods
visitClassDeclaration: aClassDeclaration
	self createScope: GraceObjectScope in: aClassDeclaration.
	^ super visitClassDeclaration: aClassDeclaration