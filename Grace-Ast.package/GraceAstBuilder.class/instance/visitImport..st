generated
visitImport: anImport
	^ GraceImportAst 
		from: anImport range
		scope: anImport scope
		resource: anImport resource
		declaring: anImport variable