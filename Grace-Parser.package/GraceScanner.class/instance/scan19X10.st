generated
scan19X10
	self recordMatch: #(39 42 43).
	self step.
	currentCharacter == Character cr
		ifTrue: [ ^ self scan25 ].
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	(currentCharacter == Character lf
		or: [ currentCharacter = (Character value: 8232) ])
		ifTrue: [ ^ self scan24 ].
	^ self scan19X10X1