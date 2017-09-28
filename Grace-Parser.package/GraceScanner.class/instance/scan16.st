generated
scan16
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan17 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan18 ].
	('"_lnrt{}' includes: currentCharacter)
		ifTrue: [ ^ self scan15 ].
	^ self reportLastMatch