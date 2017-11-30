testing
containsFile: aFileReference 
	self allItemsDo: [ :each | each = aFileReference ifTrue: [  ^ true ] ].
	^ false