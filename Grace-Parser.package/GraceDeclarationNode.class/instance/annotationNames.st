annotations
annotationNames
	"returns a collection of names (that is, strings) representing the annotations on this node"
	^ annotationNames ifNil: [
		annotationNames := self annotation ifNil: [
			#() 
		] ifNotNil: [ :annNode |
			(annNode anns collect: [:each | each requestedName])
		]
	]