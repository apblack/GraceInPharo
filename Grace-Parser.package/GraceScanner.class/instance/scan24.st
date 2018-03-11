generated
scan24
	self step.
	currentCharacter == $U
		ifTrue: [ self step.
			((currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $F)
						or: [ currentCharacter between: $a and: $f ] ])
				ifTrue: [ self step.
					((currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $F)
								or: [ currentCharacter between: $a and: $f ] ])
						ifTrue: [ ^ self scan25 ] ].
			^ self reportLastMatch ].
	currentCharacter == $u
		ifTrue: [ ^ self scan25 ].
	('"\_lnrt{}' includes: currentCharacter)
		ifTrue: [ ^ self scan23 ].
	^ self reportLastMatch