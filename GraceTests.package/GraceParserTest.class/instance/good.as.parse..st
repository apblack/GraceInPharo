test helpers
good: startSymbol as: subKind parse: aString
	"try parsing aString as a startSymbol.  Fail
	iff the parse fails, or if the result is not a sub-instance of subKind"
	
	| result startState expectedClass |
	startState := self parserUnderTest perform: (#startingStateFor , startSymbol) asSymbol.
	result := self parserUnderTest parseStream: aString readStream startingAt: startState.
	expectedClass := Smalltalk at: (#Grace , subKind , #Node) asSymbol.
	self assert: (result isKindOf: expectedClass) 
		  description: 'result is a ' , result nodeKind , ' not a ' , subKind
	