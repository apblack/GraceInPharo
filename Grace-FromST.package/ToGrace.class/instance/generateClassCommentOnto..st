class generation
generateClassCommentOnto: aToGraceVisitor 
	| comment commentLines |
	comment := classBeingTranslated organization classComment.
	comment ifEmpty: [ ^ self ].
	commentLines := comment substrings: { Character cr }.
	commentLines do: [ :each |
			aToGraceVisitor << '// '; << each trim; newline ].
	aToGraceVisitor newline

	