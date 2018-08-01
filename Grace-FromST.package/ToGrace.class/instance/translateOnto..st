translation
translateOnto: aStream
	| methodVisitor |
	methodVisitor := ToGraceVisitor onStream: aStream.
	self generateClassHeaderOnto: methodVisitor.
	self generateClassCommentOnto: methodVisitor.
	classBeingTranslated selectors do: [  :sel |
		methodVisitor visitNode: (classBeingTranslated >> sel) ast ].
	self generateClassTrailerOnto: methodVisitor