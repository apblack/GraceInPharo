error handling
displayError: aString at: aRange 
	ide tabManager currentEditor sourcePane errorHighlight: aRange.
	ide messages text: (Text string: aString attribute: TextEmphasis bold)