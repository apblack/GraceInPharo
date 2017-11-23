initialization
initializeFileTree
	fileTree := self newTree.
	fileTree childrenBlock: [ :fileRef | 
		fileRef isDirectory ifTrue: [ fileRef children ] ifFalse: [ #() ]
	].
	fileTree displayBlock: [ :fileRef |
		fileRef basename ].
	