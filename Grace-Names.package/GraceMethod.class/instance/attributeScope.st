accessing
attributeScope
	^ attributeScope ifNil: [ 
		attributeScope := definingNode attributeScope ]