test helpers
parseMinigraceFileNamed: aFileName
	
	^ self parseFile: GraceParserCompilationResource current minigraceSource / (aFileName , '.grace')
	