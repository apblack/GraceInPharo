scripts
translateTypeClasses
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'types' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.
	classesToTranslate := GraceAbstractType withAllSubclasses.
	classesToTranslate add: GraceMultiDictionary.
	classesToTranslate add: GraceBuildType.
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.