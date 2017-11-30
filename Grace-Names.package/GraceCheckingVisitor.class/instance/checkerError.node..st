error handling
checkerError: aMessage node: aParseNode 
	
	^ GraceCheckingError new 
			tag: aParseNode;
			messageText: aMessage;
			signal