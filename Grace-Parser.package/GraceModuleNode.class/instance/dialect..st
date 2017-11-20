generated
dialect: aGraceDialectNode
	self dialect notNil
		ifTrue: [ self dialect parent: nil ].
	dialect := aGraceDialectNode.
	self dialect notNil
		ifTrue: [ self dialect parent: self ]