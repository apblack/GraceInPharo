visit methods
visitTraitDeclaration: aClass
	self collectReusedNames: aClass.
	^ super visitTraitDeclaration: aClass