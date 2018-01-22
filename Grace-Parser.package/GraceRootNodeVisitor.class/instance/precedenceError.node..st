error handling
precedenceError: aMessage node: aGraceParseNode
	^ GraceAmbiguityError new
		tag: aGraceParseNode;
		messageText: aMessage;
		signal