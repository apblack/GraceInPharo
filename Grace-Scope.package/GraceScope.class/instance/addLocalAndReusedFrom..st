adding & removing reused
addLocalAndReusedFrom: anotherScope

	anotherScope localAndReusedNamesAndValuesDo: [ :nm :def | 
		def isAvailableForReuse ifTrue: [ 
			self addReused: def withName: nm ] ]