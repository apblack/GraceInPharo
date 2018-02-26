dialects
compileDialectMethod: methodBody inCategory: aName
	
	(Smalltalk globals at: #GraceCompiler) class
		compile: methodBody classified: aName notifying: nil