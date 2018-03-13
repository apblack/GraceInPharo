testing
isPublic
	^ isPublic ifNil: [ 
		isPublic := self isAnnotatedPublic or: [ self isAnnotatedReadable ]
	  ]