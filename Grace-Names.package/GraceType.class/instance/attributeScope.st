accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := definingNode value scope ]