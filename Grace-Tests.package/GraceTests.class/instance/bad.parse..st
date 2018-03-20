test helpers
bad: startSymbol parse: aString
	"try parsing aString as a startSymbol.  Succeed iff the parse fails."
	
	| result startState |
	startState := self parserUnderTest perform: (#startingStateFor , startSymbol) asSymbol.
	self should: [ result := self parserUnderTest parseStream: aString readStream startingAt: startState ] 
		raise: GraceCompilationError.
	