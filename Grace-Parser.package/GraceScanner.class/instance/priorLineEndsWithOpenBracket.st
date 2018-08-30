line handling
priorLineEndsWithOpenBracket
	"This relies on lastNonCommentToken being set in #reportLastMatch"
	| tok |
	lastNonCommentToken ifNil: [ ^false ].
	tok := lastNonCommentToken value.
	tok size = 1 ifFalse: [ ^ false ].	 "to exclude the empty string"
	^ '([{⟦' includesSubstring: tok
