testing
hasParent
	^ parent notNil and: [
		parent ~= GraceNoParentNode instance ]