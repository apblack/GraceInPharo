accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := definingParseNode initializer scope ]