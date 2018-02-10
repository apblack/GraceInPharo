adding & removing reused
addReused: aVariable
	
	^ self addReused: aVariable withName: aVariable declaredName
	