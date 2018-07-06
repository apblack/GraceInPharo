generated
typeDecls: anOrderedCollection
	self setParents: self typeDecls to: nil.
	typeDecls := anOrderedCollection.
	self setParents: self typeDecls to: self