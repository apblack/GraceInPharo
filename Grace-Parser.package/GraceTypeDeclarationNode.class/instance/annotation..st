generated
annotation: aGraceAnnotationNode
	self annotation notNil
		ifTrue: [ self annotation parent: nil ].
	annotation := aGraceAnnotationNode.
	self annotation notNil
		ifTrue: [ self annotation parent: self ]