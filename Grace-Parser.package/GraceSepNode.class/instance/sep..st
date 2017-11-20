generated
sep: aGraceSepNode
	self sep notNil
		ifTrue: [ self sep parent: nil ].
	sep := aGraceSepNode.
	self sep notNil
		ifTrue: [ self sep parent: self ]