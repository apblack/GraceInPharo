generated
reuses: anOrderedCollection
	self setParents: self reuses to: nil.
	reuses := anOrderedCollection.
	self setParents: self reuses to: self