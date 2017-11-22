error handling
displayError: aString at: aRange 
	sourcePane errorHighlight: aRange.
	messages text: (Text string: aString attribute: TextEmphasis bold)