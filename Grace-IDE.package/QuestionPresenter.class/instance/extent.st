api
extent

	| textWidth rowHeight |
	textWidth := (StandardFonts defaultFont widthOfString: question label).
	rowHeight := self class inputTextHeight.

	^ (90@24) + (textWidth@rowHeight)