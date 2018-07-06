test helpers
goodParse: aString
	"try parsing aString as a startSymbol"
	
	| startState |
	startState := GraceParser startingStateForModule.
	^ GraceParser parseStream: aString readStream startingAt: startState.
	
	