error handling
displayError: aString at: aRange 
	aRange isEmpty ifFalse: [ide tabManager currentEditor errorHighlight: aRange].
	ide messages text: (Text string: aString attribute: TextEmphasis bold)