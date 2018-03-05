annotations
isAnnotatedConfidential
	^ self definingNode annotation 
		ifNil: [ false ] 
		ifNotNil: [ :anns | anns anns anySatisfy: [ :each | each confidentialToken isNotNil ] ]