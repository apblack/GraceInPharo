line handling
checkIndentationReset
	"A bock has ended.  Check that the indentation returns to the previous level"
	
	| removals |
	removals := indentStack removeLast: braceChange negated.
	currentLineIndent = indentStack last
		ifFalse: [ ^self lexicalError: 'On closing a block, the indentation must return to the same level as when the block was opened.' ].
