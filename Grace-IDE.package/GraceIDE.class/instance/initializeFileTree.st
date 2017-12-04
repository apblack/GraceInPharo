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
			fileRef ifNotNil: [ 
				fileTree menu: [ :aMenu | fileTree loadMenuFor: fileRef in: aMenu ].
				fileRef isDirectory ifFalse: [
					self tabManager 
						selectOrCreateTabForFile: fileRef 
						tabSelectionAction: [ "fileTree selectedItem: item. fileTree changed." ] ] ]
		]