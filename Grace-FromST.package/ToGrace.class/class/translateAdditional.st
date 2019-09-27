scripts
translateAdditional
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'naming_tests' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.

	classesToTranslate := {GraceNameTests}.
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.