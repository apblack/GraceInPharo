generated
scan27
	self step.
	currentCharacter == $U
		ifTrue: [ ^ self scan28 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan29 ].
	(currentCharacter isConnectorPunctuation
		or:
			[ '"\lnrt{}' includes: currentCharacter ])
		ifTrue: [ ^ self scan26 ].
	^ self reportLastMatch