generated
annotationList: aGraceAnnotationNode
	self annotationList notNil
		ifTrue: [ self annotationList parent: nil ].
	annotationList := aGraceAnnotationNode.
	self annotationList notNil
		ifTrue: [ self annotationList parent: self ]