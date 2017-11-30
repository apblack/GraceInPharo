adding
addFile: aFileReference
	| moduleName |
	(self containsFile: aFileReference) ifTrue: [ 
		(self ask: 'That file is already open in the editor. Do you want to reload it from the file system?') 
			ifFalse: [ ^ self ]
	].
	moduleName := aFileReference basenameWithoutExtension.
	(self containsFileWithBasename: aFileReference basename) ifTrue: [ 
		(self askForName: ('Another module with the name {1} is already loaded in the editor.  Choose a new module name for the file that you are adding' format: {moduleName})) 
			ifNil: [ ] 
			ifNotNil: [ ] ].
	self roots: ((self roots copyWith: aFileReference) sort: [ :a :b | a basename >= b basename]).