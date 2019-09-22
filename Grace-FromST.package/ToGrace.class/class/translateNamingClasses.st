scripts
translateNamingClasses
	<script>
	| translator generatedGrace outputFile classesToTranslate outputStream nameClasses |
	outputFile := FileLocator home / 'Desktop' / 'graceCode' / 'naming' , 'grace'.
	outputFile ensureDelete.
	outputStream := outputFile writeStream.
	nameClasses := (RPackageOrganizer default packageNamed: 'Grace-Names') definedClasses.
	nameClasses := nameClasses difference: ((RPackageOrganizer default packageNamed: 'Grace-Names') 
							classTagNamed: #Variables) classes.  "already translated" 
	"nameClasses do: [ :each | each withAllSubclassesDo: [ :sc | 
			(nameClasses includes: sc) ifFalse: [ self error: 'subclass ', sc name , ' not in nameClasses' ] ] ]."
	classesToTranslate := nameClasses.
	classesToTranslate addAll: (nameClasses collect: [ :each | each class ]).
	classesToTranslate do: [ :each |
		translator := ToGrace fromSmalltalkClass: each.
		generatedGrace := String streamContents: [ :s | 
			translator translateOnto: s ].
		outputStream nextPutAll: generatedGrace
	].
	outputStream close.