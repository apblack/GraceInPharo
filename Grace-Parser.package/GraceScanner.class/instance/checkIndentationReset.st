line handling
checkIndentationReset
	"A block has ended.  Check that the indentation returns to the previous level
	braceChange may nevertheless be 0, since a new block may have started, 
	e.g., the prior line may be 
	    } else {
	"
	
	(indentStack size < (1 - braceChange)) ifTrue: [ 
		self halt: 'this should never happen'.
		^ self lexicalError: 'There is no opening brace corresponding to this closing brace' ].
	indentStack removeLast: braceChange negated.
	currentLineIndent = indentStack last ifFalse: [ 
		^ self lexicalError: 'on closing a block, the indentation must return to that of the line on which the block was opened.' ].
