generated
scan38
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan39 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan40 ].
	('"\_lnrt{}' includes: currentCharacter)
		ifTrue: [ ^ self scan37 ].
	^ self reportLastMatch