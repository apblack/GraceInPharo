scopes
objectsOut
	"the number of `outer`s, that is, the number of objects up the lexical chain to the object to which I refer."
	^ outerToken ifNotNil: [ 1 ] ifNil: [ outerDotTokens size ]