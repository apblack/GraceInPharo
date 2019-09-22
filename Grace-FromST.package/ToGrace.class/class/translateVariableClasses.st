scripts
translateVariableClasses
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'variables' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.
	classesToTranslate := GraceAbstractVariable withAllSubclasses.
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.