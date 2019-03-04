scripts
translateScopeClasses
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'scope' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.
	classesToTranslate := GraceScope withAllSubclasses.
	classesToTranslate 
		add: GraceNameDictionary; 
		add: GraceResolvedVariable; 
		add: GraceResolvedVariable class.
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.