visit methods
visitClassDeclaration: aClass
	self collectReusedNames: aClass.
	^ super visitClassDeclaration: aClass