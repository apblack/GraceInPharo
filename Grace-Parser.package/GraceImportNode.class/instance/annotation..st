generated
annotation: aGraceAnnotationOptionNode
	self annotation notNil
		ifTrue: [ self annotation parent: nil ].
	annotation := aGraceAnnotationOptionNode.
	self annotation notNil
		ifTrue: [ self annotation parent: self ]