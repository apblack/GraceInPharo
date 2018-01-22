test helpers
bad: startSymbol parse: aString
	"try parsing aString as a startSymbol.  The parse should succeed, but the
	name resolution should fail."
	
	| result |
	self should: [ 
		result := super good: startSymbol as: startSymbol parse: aString.
		result := GraceBuildScopesVisitor new acceptNode: result.
		result checkParentLinks.
	] raise: GraceCompilationError.
	^ result
	