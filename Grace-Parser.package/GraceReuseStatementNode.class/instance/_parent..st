generated
_parent: aGraceRootNode
	self _parent notNil
		ifTrue: [ self _parent parent: nil ].
	_parent := aGraceRootNode.
	self _parent notNil
		ifTrue: [ self _parent parent: self ]