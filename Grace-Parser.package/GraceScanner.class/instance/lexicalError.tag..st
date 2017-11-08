error signalling
lexicalError: message tag: aTag
	"raises a lexical error as an exception, tagged with aTag"
	
	"Note that the tag field of the exception must be set before the exception is
	signalled, because after it has been signaled, we won't be here anymore!"
	
	self stream skip: 1.
	GraceLexicalError new
		messageText: 'line ', stream lineNumber asString , ' -- ' , message;
		tag: aTag;
		signal