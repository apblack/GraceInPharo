generated
scanForToken
	state == #string
		ifTrue: [ ^ self scan19 ].
	state == #uninterpString
		ifTrue: [ ^ self scan73 ].
	state == #default
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch