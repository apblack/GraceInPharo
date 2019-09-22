translation
translate
	| outputFile output |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / classBeingTranslated nameForGrace uncapitalized, 'grace'.
	output := String streamContents: [ :s | self translateOnto: s ].
	outputFile writeStream nextPutAll: output; close.
	^ output