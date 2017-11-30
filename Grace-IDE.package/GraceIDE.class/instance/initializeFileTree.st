initialization
initializeFileTree
	fileTree := self instantiate: GraceTreePresenter.
	fileTree
		childrenBlock: [ :fileRef | 
			fileRef isDirectory
				ifTrue: [ fileRef children select: [ :each | each extension = 'grace' ] ]
				ifFalse: [ #() ] ];
		displayBlock: [ :fileRef | fileRef basenameWithoutExtension ];
		whenSelectedItemChanged: [ :fileRef | 
			| item | 
			item := fileTree selectedItem.
			fileRef ifNotNil: [self tabManager 
													selectOrCreateTabForFile: fileRef 
													tabSelectionAction: [ fileTree selectedItem: item. fileTree changed. ] ] ]