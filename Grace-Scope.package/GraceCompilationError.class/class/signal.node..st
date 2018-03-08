exceptioninstantiator
signal: message node: aNode
	"Signal the occurrence of acompilation error with a specified description message.  Include node as the tag for the exception."

	^ self new 
		messageText: message;
		tag: aNode; 
		signal