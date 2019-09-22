scripts
translateTestClasses
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'nameDictionary_test' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.
	classesToTranslate := { GraceNameDictionaryTest }.
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.