dialects
compileDialectMethod: methodBody inCategory: aName
	
	(Smalltalk globals at: #SmallGraceCompiler) class
		compile: methodBody classified: aName notifying: nil