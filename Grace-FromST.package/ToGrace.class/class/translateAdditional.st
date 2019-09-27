scripts
translateAdditional
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'additional' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.

	classesToTranslate := {GraceNodeRewriter class}.
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.