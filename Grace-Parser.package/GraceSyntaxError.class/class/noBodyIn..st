error handling
noBodyIn: aMethodDecl
	^ self signal: aMethodDecl description , ' must have a body enclosed in { and } after the header'
			 withTag: aMethodDecl