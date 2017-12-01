error-handling
structuralError: aMessage node: aGraceAbstractVariable
	
	^ GraceNamingError new 
			message: aMessage;
			tag: aGraceAbstractVariable;
			signal