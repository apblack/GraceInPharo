testing
hasBody
	"answers true is this declaration has no body at all.  An empty pair of braces is a body (which does nothing and answers done, so we check for the absence of braces, not whether items is empty."
	^ leftBraceToken isNotNil 