error handling
traitConstructionError: aMessage node: aParseTreeNode 
	^ GraceSyntaxError new
		messageText: aMessage;
		tag: aParseTreeNode;
		signal