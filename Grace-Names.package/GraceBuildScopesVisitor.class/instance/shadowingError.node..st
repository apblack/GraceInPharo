error handling
shadowingError: aMessage node: aParseNode 
	
	^ GraceNamingError new 
			tag: aParseNode;
			messageText: aMessage;
			signal