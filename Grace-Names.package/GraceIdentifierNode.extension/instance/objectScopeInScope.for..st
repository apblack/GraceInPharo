*Grace-Names
objectScopeInScope: aGraceObjectScope for: aNode
	"an identifier may be the first (and only) part of an expressiojn, but it can't occur further down a request path"
	^ self error: 'malformed parse tree'
	