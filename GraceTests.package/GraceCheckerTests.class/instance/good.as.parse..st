test helpers
good: startSymbol as: subKind parse: aString
	"try parsing aString as a startSymbol.  Fail
	iff the parse fails, or if the result is not a sub-instance of subKind"
	
	| result |
	result := super good: startSymbol as: subKind parse: aString.
	result := GraceCheckingVisitor new acceptNode: result.
	^ result
	