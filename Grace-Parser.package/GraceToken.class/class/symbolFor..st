symbols
symbolFor: anId
	symbolTable ifNil: [
		symbolTable := GraceParser new symbolNames ].
	^ symbolTable at: anId ifAbsent: [ anId asString ]
	
		