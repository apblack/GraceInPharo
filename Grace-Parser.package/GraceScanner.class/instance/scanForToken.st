generated
scanForToken
	state == #string
		ifTrue: [ ^ self scan35 ].
	state == #uninterpString
		ifTrue: [ ^ self scan47 ].
	state == #default
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch