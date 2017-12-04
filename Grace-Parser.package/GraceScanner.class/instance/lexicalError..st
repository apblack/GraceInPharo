error signalling
lexicalError: message
	"raises a lexical error as an exception, tagged with the range to highlight when showing the error."
	
	self 
		lexicalError: message 
		tag: (GraceRange from: previousMatch stopPosition + 1 to: self position in: self)