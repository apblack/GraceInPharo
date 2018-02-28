execute
execute
	| editor fileReference backupFile |
	editor := ide tabManager currentEditor.
	fileReference := ide tabManager currentFile.
	backupFile:= fileReference copyWithPath: fileReference path , 'bak'.
	backupFile ensureDelete.
	fileReference exists ifTrue: [fileReference copy moveTo: backupFile].
	[ fileReference writeStreamDo: [ :s | | cr |
		cr := Character cr.
		editor pendingText do: [ :ch | s nextPut: 
			(ch = cr ifTrue: [ Character lf ] ifFalse: [ ch ]) ] ]
	] on: Error
	  do: [ :ex | UIManager default alert: ('Could not write file. ', ex messageText ).
			         ^ self ].
	editor text: editor pendingText