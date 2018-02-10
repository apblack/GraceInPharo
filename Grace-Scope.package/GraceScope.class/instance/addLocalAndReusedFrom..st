adding & removing reused
addLocalAndReusedFrom: superScope

	superScope localAndReusedNamesAndValuesDo: [ :nm :def | 
		self addReused: def withName: nm ]