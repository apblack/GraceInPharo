line handling
isIndentationChangeOne
	| indentationChange |
	indentationChange := currentLineIndent - priorLineIndent.
	^ indentationChange abs = 1