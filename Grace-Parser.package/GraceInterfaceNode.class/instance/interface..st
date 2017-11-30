generated
interface: aGraceInterfaceLiteralNode
	self interface notNil
		ifTrue: [ self interface parent: nil ].
	interface := aGraceInterfaceLiteralNode.
	self interface notNil
		ifTrue: [ self interface parent: self ]