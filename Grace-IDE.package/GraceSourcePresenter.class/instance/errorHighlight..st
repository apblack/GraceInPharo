highlighting
errorHighlight: anInterval 
	| text |
	text := self pendingText asText.
	self flag: 'why does self text ever return a string, rather than a text?'.
	text makeColor: Color orange darker from: anInterval first to: anInterval last.
	self pendingText: text.
	self setSelection: anInterval.
	self changed: #text