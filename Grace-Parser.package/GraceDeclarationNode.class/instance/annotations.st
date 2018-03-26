annotations
annotations
	"returns a collection of annotations (that is, expressions) representing the annotations on this node"
	^ self annotationList 
		ifNil: [ #() ]
		ifNotNil: [ :lst | (lst anns) ]