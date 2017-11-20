generated
ss: aGraceSsNode
	self ss notNil
		ifTrue: [ self ss parent: nil ].
	ss := aGraceSsNode.
	self ss notNil
		ifTrue: [ self ss parent: self ]