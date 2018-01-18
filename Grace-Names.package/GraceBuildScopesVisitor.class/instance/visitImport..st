visit methods
visitImport: anImport
	
	anImport	id markAsDefinition.
	anImport scope add: (GraceImport fromParseTreeNode: anImport).
	^ super visitImport: anImport