annotations
annotationNames
	"returns a collection of names (that is, strings) representing the annotations on this node"
	^ annotationNames ifNil: [
		annotationNames := self annotationList ifNil: [
			#() 
		] ifNotNil: [ :lstNode |
			(lstNode anns collect: [:each | each requestedName])
		]
	]