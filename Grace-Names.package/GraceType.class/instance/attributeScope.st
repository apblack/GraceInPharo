accessing
attributeScope
	^ attributeScope ifNil: [
		attributeScope := definingParseNode value attributeScope ]