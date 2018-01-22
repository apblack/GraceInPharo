test generation
compileTestMethod: methodBody inCategory: aName
	
	(Smalltalk globals at: #GraceParserGeneratedTests) 
		compile: methodBody classified: aName notifying: nil