generated
stringConstructor: aGraceStringConstructorNode
	self stringConstructor notNil
		ifTrue: [ self stringConstructor parent: nil ].
	stringConstructor := aGraceStringConstructorNode.
	self stringConstructor notNil
		ifTrue: [ self stringConstructor parent: self ]