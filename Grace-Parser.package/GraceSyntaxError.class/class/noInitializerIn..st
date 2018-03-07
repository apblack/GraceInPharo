error handling
noInitializerIn: aDefDecl
	^ self signal: 'a definition must have `=` and a value after the name' withTag: aDefDecl