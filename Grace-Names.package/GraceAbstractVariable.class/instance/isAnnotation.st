testing
isAnnotation
	"Do I define an annotation?"
	^ isAnnotation ifNil: [ isAnnotation := 
		self isMarker and: [ self definingParseNode annotationNames includes: 'annotation' ] ]