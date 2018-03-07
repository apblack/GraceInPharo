testing
isAnnotation
	"Do I define an annotation?"
	self flag: 'cache this information?'.
	^ self isMarker and: [ self definingNode annotationNames includes: 'annotation' ].