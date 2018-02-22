adding & removing reused
addLocalAndReusedFrom: anotherScope

	anotherScope localAndReusedNamesAndValuesDo: [ :nm :def | 
		self addReused: def withName: nm ]