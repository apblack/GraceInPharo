execute
execute
	| editor fileReference |
	editor := ide tabManager currentEditor.
	fileReference := ide tabManager currentFile.
	[ fileReference writeStreamDo: [ :s | s nextPutAll: editor pendingText asString ] ] forkAndWait
		on: Error
		do: [ :ex | ^ UIManager default alert: ('Could not write file. ', ex messageText ) ].
	editor accept
				