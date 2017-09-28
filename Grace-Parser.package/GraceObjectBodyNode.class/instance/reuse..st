generated
reuse: aGraceReusePartNode
	self reuse notNil
		ifTrue: [ self reuse parent: nil ].
	reuse := aGraceReusePartNode.
	self reuse notNil
		ifTrue: [ self reuse parent: self ]