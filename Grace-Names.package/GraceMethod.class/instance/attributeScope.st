scopes
attributeScope
	^ attributeScope ifNil: [ 
		attributeScope := definingParseNode attributeScope ]