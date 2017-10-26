generated
scanForToken
	state == #string
		ifTrue: [ ^ self scan24 ].
	state == #uninterpString
		ifTrue: [ ^ self scan92 ].
	state == #default
		ifTrue: [ ^ self scan1 ].
	^ self reportLastMatch