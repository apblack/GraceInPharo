scope creation
visitImport: anImport
	
	anImport	id markAsDefinition.
	anImport scope add: (GraceImport fromParseTreeNode: anImport) withName: anImport id name.
	^ self visitChildren: anImport