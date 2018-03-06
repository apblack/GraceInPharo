test helpers
good: startSymbol parse: aString
	"try parsing aString as a startSymbol.  Fail iff the parse fails, or the wrong kind
	of node is returned."
	
	^ self good: startSymbol as: startSymbol parse: aString
	