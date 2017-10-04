generated
scan19
	self step.
	currentCharacter == Character lf
		ifTrue: [ ^ self scan19X10 ].
	currentCharacter == Character cr
		ifTrue: [ ^ self scan19X5 ].
	currentCharacter == Character space
		ifTrue: [ ^ self scan19X12 ].
	^ self scan19X26