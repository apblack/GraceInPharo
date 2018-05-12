accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := GraceModuleRegistry attributeScopeOf: definingParseNode resourceValue ]