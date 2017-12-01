testing
containsFileWithBasename: aString 
	self allItemsDo: [ :each | (each content basename = aString) ifTrue: [ ^ true ] ].
	^ false
	