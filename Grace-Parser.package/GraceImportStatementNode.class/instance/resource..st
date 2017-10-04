generated
resource: aGraceStringLiteralNode
	self resource notNil
		ifTrue: [ self resource parent: nil ].
	resource := aGraceStringLiteralNode.
	self resource notNil
		ifTrue: [ self resource parent: self ]