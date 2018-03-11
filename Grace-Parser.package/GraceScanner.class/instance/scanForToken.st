generated
scanForToken
	state == #string
		ifTrue: [ ^ self scan22 ].
	state == #uninterpString
		ifTrue: [ ^ self scan28 ].
	state == #default
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch