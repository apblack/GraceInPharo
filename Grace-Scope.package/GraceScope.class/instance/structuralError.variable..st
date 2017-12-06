error reporting
structuralError: aMessage variable: aGraceAbstractVariable
	
	^ GraceNamingError new 
			message: aMessage;
			tag: aGraceAbstractVariable;
			signal