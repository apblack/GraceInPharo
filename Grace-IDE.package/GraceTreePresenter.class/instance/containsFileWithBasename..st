testing
containsFileWithBasename: aString 
	self allItemsDo: [ :each | (each baseName = aString) ifTrue: [ ^ true ] ].
	^ false
	