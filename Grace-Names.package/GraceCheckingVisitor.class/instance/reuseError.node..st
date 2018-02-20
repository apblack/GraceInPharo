error handling
reuseError: aMessage node: aParseNode 
	
	^ GraceReuseError new 
			tag: aParseNode;
			messageText: aMessage;
			signal