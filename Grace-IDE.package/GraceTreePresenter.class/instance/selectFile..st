selection
selectFile: aFileReference 
	self allItemsDo: [ :each | 
		aFileReference = each content ifTrue: [
			self selectItem: each.
			^ self ] ]