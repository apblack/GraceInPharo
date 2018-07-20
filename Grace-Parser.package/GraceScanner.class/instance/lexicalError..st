error signalling
lexicalError: message
	"raises a lexical error as an exception, tagged with the current indentation"
	
	"Note that the tag field of the exception must be set before the exception is
	signalled, because after it has been signaled, we won't be here anymore!"
	| newlineAndSpaces spaceCount |
	newlineAndSpaces := outputStream contents.
	spaceCount := newlineAndSpaces size.
	newlineAndSpaces do: [ :ch | (ch ~= Character space) ifTrue: [spaceCount := spaceCount - 1 ] ].
	self
		lexicalError: message 
		tag: (GraceRange 
					from: self position - spaceCount + 1
					to: self position 
					in: self)