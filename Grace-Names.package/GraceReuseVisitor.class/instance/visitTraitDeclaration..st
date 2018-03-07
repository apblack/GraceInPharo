visit methods
visitTraitDeclaration: aClass
	(GraceGatherer for: aClass) collectReusedNames.
	^ super visitTraitDeclaration: aClass