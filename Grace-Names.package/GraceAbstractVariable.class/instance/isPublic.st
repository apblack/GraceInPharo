testing
isPublic
	^ (self isPublicByDefault and: [ self isAnnotatedConfidential not ])
			or: [ ^ self isAnnotatedPublic ]