test helpers
bad: startSymbol parse: aString
	"try parsing aString as a startSymbol.  The parse and Scope building should succeed, 
	but the ambiguity resolution should fail."
	
	| result |
	result := super good: startSymbol as: startSymbol parse: aString.
	self should: [ result := GraceCheckingVisitor new acceptNode: result ] 
			raise: GraceCheckingError.
	^ result
	