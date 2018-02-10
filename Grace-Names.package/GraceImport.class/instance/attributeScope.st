accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := (GraceModuleRegistry at: definingNode resource) scope ]