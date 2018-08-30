line handling
checkConstantIndent
	"We have neither started nor ended a block, and this is not a continuation line"
	
	(priorLineIndent = currentLineIndent) ifTrue: [ ^ self ].
	(priorLineIndent > currentLineIndent) ifTrue: [ 
		^ self lexicalError: 'do not reduce the indentation except when ending a block' ].
	^ self lexicalError: 'this is not the body of a block, or a continuation line, so it should have  indentation ', priorLineIndent asString, ', like the previous line'