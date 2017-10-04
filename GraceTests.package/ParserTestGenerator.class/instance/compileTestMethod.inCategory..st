test generation
compileTestMethod: methodBody inCategory: aName
	
	(Smalltalk globals at: #GraceParserGeneratedTest) 
		compile: methodBody classified: aName notifying: nil