test helpers
bad: startSymbol parse: aString
	"try parsing aString as a startSymbol.  The parse should succeed, but the
	name resolution should fail."
	
	| result |
	result := super good: startSymbol as: startSymbol parse: aString.
	self should: [ 
		result := GraceBuildScopesVisitor new acceptNode: result.
		result checkParentLinks.
		result := GraceNameResolutionVisitor new acceptNode: result
	] raise: GraceNamingError.
	^ result
	