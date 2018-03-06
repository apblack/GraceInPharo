generated
scanForToken
	state == #string
		ifTrue: [ ^ self scan21 ].
	state == #uninterpString
		ifTrue: [ ^ self scan27 ].
	state == #default
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch