test helpers
good: startSymbol as: subKind parse: aString
	"try parsing aString as a startSymbol.  Fail
	iff the parse fails, or if the result is not a sub-instance of subKind"
	
	| result startState |
	startState := self parserUnderTest perform: (#startingStateFor , startSymbol) asSymbol.
	result := self parserUnderTest parseStream: aString readStream startingAt: startState.
	result completeSource: aString.
	result checkParentLinks.
	self assert: result isA: subKind.
	^ result
	