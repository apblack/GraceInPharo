visit methods
visitClassDeclaration: aClass
	(GraceGatherer for: aClass) collectReusedNames.
	^ super visitClassDeclaration: aClass