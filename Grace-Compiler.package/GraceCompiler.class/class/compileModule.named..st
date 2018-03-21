instance creation
compileModule: source named: aName
	| input |
	input := source isStream ifTrue: [ source ] ifFalse: [ source readStream ].
	^ self new compileModule: input named: aName