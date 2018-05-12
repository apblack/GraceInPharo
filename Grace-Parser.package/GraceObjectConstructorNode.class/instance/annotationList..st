generated
annotationList: aGraceAnnotationsNode
	self annotationList notNil
		ifTrue: [ self annotationList parent: nil ].
	annotationList := aGraceAnnotationsNode.
	self annotationList notNil
		ifTrue: [ self annotationList parent: self ]