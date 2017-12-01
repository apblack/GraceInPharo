testing
containsFile: aFileReference 

	self allItemsDo: [ :each | 1halt. each = aFileReference ifTrue: [  ^ true ] ].
	^ false