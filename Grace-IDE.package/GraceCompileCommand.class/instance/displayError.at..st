error handling
displayError: aString at: aRange 
	ide tabManager currentEditor errorHighlight: aRange.
	ide messages text: (Text string: aString attribute: TextEmphasis bold)