keybindings
spacesForTab
	| sel insertion insertionPoint text |
	sel := self getSelection.
	text := self pendingText.
	insertionPoint := sel first.
	insertion := '    ' copyFrom: ((self columnFor: insertionPoint in: text) - 1) \\ 4 + 1 to: 4.
	self pendingText: (text copyReplaceFrom: insertionPoint to: sel last with: insertion).
	self setSelection: (insertionPoint + insertion size to: insertionPoint + insertion size - 1)