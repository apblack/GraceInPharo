comparing
= other
	self class = other class ifFalse: [ ^ false ].
	self class allInstVarNames do: [ :name |
		((name ~= #range) and: [self respondsTo: name]) ifTrue: [  |myChild otherChild|
			myChild := self perform: name.
			otherChild := other perform: name.
			myChild = otherChild ifFalse: [ ^false ]
		]
	].
	^ true