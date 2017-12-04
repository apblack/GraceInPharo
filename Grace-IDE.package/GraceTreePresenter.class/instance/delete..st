file deletion
delete: aFileReference 
	self trashBin isDirectory ifTrue: [ 
		aFileReference moveTo: self trashBin
	] ifFalse: [
		(UIManager default confirm: 'Are you sure that you want to delete the file ' , aFileReference fullName , 'from the file system?' 
							   label: 'Really delete the file?') ifTrue: [ 
			aFileReference delete
		]
	]