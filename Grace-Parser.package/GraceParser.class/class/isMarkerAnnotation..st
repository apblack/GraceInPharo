annotations
isMarkerAnnotation: anAnnotationName
	"is anAnnotationName one of the annotations that turn a declaration into a marker declaration?"
	^ self markerAnnotations includes: anAnnotationName 