syntax highlighting
syntaxHighlight: aText

	self highlighter applyOn: aText.
	"self widget widget hasUnacceptedEdits: true"  "this fails to restore the orange corner warning."
	