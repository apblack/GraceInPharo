dialects
writeDialectToFile: fileName
	| dialectName |
	dialectName := fileName basename copyReplaceAll: '.grace' with: ''.
	fileName writeStreamDo: [ :s | 
		s nextPutAll: (SmallGraceCompiler perform: dialectName asSymbol) ]
