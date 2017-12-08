execute
execute
	| editor fileReference backupFile |
	editor := ide tabManager currentEditor.
	fileReference := ide tabManager currentFile.
	backupFile:= fileReference copyWithPath: fileReference path , 'bak'.
	backupFile ensureDelete.
	fileReference exists ifTrue: [fileReference copy moveTo: backupFile].
 
	fileReference writeStreamDo: [ :s | s nextPutAll: editor pendingText asString ].
	"[ fileReference writeStreamDo: [ :s | s nextPutAll: editor pendingText asString ] ]
		on: Error
		do: [ :ex | UIManager default alert: ('Could not write file. ', ex messageText ).
			         ^ self ]."
	editor text: editor pendingText