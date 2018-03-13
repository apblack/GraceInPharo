testing
isPublic
	^ isPublic ifNil: [ 
		isPublic := self isAnnotatedPublic or: [
			self isAnnotatedConfidential not and: self isPublicByDefault ]
	  ]