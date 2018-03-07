annotations
isMarkerDeclaration
	^ self annotationNames anySatisfy: [ :each | GraceParser isMarkerAnnotation: each ]