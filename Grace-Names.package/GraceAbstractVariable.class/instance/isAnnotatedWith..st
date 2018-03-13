private
isAnnotatedWith: anAnnotationName
	^ self definingNode annotation
		ifNil: [ false ]
		ifNotNil: [ :anns | 
			anns anns
				anySatisfy: [ :each | each requestedName = anAnnotationName ] ]