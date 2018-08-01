translation
translate
	| outputFile output |
	outputFile := FileLocator home / 'Desktop' / classBeingTranslated name , 'grace'.
	output := String streamContents: [ :s | self translateOnto: s ].
	outputFile writeStream nextPutAll: output; close.
	outputFile inspect