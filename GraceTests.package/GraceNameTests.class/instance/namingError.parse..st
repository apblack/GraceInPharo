test helpers
namingError: startSymbol parse: aString
	"try parsing aString as a startSymbol.  The parse should succeed, but the
	name resolution should fail."
	
	| result startState |
	startState := self parserUnderTest perform: (#startingStateFor , startSymbol) asSymbol.
	result := self parserUnderTest parseStream: aString readStream startingAt: startState.
	self should: [ GraceBuildScopesVisitor new acceptNode: result ] raise: GraceSyntaxError.
	^ result
	