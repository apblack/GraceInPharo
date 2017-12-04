removing
remove: aFileReference 
	self roots: (self roots copyWithout: aFileReference)