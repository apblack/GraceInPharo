initialization
initializeFileTree
	fileTree := self newTree.
	fileTree
		childrenBlock: [ :fileRef | 
			fileRef isDirectory ifTrue: [ fileRef children ] ifFalse: [ #() ]  ];
		displayBlock: [ :fileRef | fileRef basename ];
		whenSelectedItemChanged: [ :fileRef |
			fileRef ifNotNil: [ self tabManager selectOrCreateTabForFile: fileRef ] ]