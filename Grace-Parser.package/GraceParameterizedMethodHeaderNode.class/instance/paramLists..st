generated
paramLists: anOrderedCollection
	self setParents: self paramLists to: nil.
	paramLists := anOrderedCollection.
	self setParents: self paramLists to: self