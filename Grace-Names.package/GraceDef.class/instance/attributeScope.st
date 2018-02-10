accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := definingNode initializer scope ]