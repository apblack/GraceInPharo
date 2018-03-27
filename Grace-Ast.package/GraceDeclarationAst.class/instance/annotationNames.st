accessing
annotationNames
	"returns a collection of names (that is, strings) representing the annotations on this node"
	^ annotationNames ifNil: [
		annotationNames := self annotations collect: [:each | each requestedName]
	]