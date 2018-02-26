error reporting
redeclarationError: aMessage variable: aVariable
	GraceNamingError new 
		messageText: aMessage;
		tag: aVariable definingNode;
		signal