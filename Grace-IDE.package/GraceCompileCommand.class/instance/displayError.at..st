error handling
displayError: aString at: aNode
	| moduleName messagePrefix |
	messagePrefix := ''.
	aNode ifNotNil: [ 
		moduleName := aNode moduleName.
		aNode range isEmpty ifFalse: [ | editor |
			editor := ide tabManager currentEditor.
			editor file basenameWithoutExtension = moduleName
					ifTrue: [ editor errorHighlight: aNode range ]
					ifFalse: [ messagePrefix := 'in module ' , moduleName , ', position '
								, aNode range rangePrintString , '. ' ] ] ].
	ide messages text: (Text string: messagePrefix , aString attribute: TextEmphasis bold)