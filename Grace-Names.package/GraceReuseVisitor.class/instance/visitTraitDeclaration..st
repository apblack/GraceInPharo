visit methods
visitTraitDeclaration: aClass
	self collectReusedNames: aClass.
	^ super visitClassDeclaration: aClass