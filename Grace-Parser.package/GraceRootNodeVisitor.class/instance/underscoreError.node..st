error handling
underscoreError: aMessage node: aGraceParseNode 
	
	^ GraceNamingError new 
			tag: aGraceParseNode;
			messageText: aMessage;
			signal
			