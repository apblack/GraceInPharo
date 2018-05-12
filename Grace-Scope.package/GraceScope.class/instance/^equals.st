comparing
= other
	self class = other class ifFalse: [ ^ false ].
	^(self localNames keys sort = other localNames keys sort) and: [ 
		self reusedNames keys sort = other reusedNames keys sort]