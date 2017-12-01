error signalling
lexicalError: message
	"raises a lexical error as an exception, tagged with this scanner"
	
	"Note that the tag field of the exception must be set before the exception is
	signalled, because after it has been signaled, we won't be here anymore!"
	self halt.
	self lexicalError: message tag: self 