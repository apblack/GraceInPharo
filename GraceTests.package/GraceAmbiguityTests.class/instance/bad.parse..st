test helpers
bad: startSymbol parse: aString
	"try parsing aString as a startSymbol.  The parse and Scope building should succeed, 
	but the ambiguity resolution should fail."
	
	| result |
	self should: [ 
		result := super good: startSymbol as: startSymbol parse: aString.
		result := GraceDisambiguationVisitor new acceptNode: result
	] raise: GraceCompilationError.
	^ result
	