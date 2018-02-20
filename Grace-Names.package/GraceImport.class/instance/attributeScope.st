accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := GraceModuleRegistry attributeScopeOf: definingNode resourceValue ]