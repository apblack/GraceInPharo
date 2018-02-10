generated
scanForToken
	state == #string
		ifTrue: [ ^ self scan38 ].
	state == #uninterpString
		ifTrue: [ ^ self scan50 ].
	state == #default
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch