generated
annotation: aGraceAnnotationPartNode
	self annotation notNil
		ifTrue: [ self annotation parent: nil ].
	annotation := aGraceAnnotationPartNode.
	self annotation notNil
		ifTrue: [ self annotation parent: self ]