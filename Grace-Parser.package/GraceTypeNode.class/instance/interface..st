generated
interface: aGraceInterfaceNode
	self interface notNil
		ifTrue: [ self interface parent: nil ].
	interface := aGraceInterfaceNode.
	self interface notNil
		ifTrue: [ self interface parent: self ]