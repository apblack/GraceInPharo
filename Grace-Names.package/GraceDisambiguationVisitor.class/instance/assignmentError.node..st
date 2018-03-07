error handling
assignmentError: aMessage node: aParseNode 
	
	^ GraceAssignmentError new 
			tag: aParseNode;
			messageText: aMessage;
			signal