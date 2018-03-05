annotations
isAnnotatedPublic
	^ self definingNode annotation 
		ifNil: [ false ] 
		ifNotNil: [ :anns | anns anns anySatisfy: [ :each | each publicToken isNotNil ] ]