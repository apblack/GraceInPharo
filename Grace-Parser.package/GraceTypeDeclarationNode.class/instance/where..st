generated
where: aGraceWhereNode
	self where notNil
		ifTrue: [ self where parent: nil ].
	where := aGraceWhereNode.
	self where notNil
		ifTrue: [ self where parent: self ]