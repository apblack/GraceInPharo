testing
isAnnotation
	"Do I define an annotation?"
	^ isAnnotation ifNil: [ isAnnotation := 
		self isMarker and: [ self definingNode annotationNames includes: 'annotation' ] ]