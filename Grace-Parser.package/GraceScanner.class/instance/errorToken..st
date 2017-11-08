error signalling
errorToken: aMessage
	"A lexical error has been detected.  Ideally, we might raise the error directly in the UI.  Since 
	we don't know how to do that, we generate an error token and let the parser raise the error."

	matchActions := {self errorId}.
	outputStream reset.
	^ (self tokenClass
		value: aMessage
		start: self position + 1
		ids: matchActions)
		scanner: self