generated
scan21
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan22 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan23 ].
	('"_lnrt{}' includes: currentCharacter)
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch