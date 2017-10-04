generated
scan1X2X1X1
	self recordMatch: #(49).
	self step.
	currentCharacter == $f
		ifTrue: [ self recordMatch: #(34 49).
			self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(48) ].
			(currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ])
				ifTrue: [ [ self step.
					currentCharacter == $.
						ifTrue: [ ^ self recordAndReportMatch: #(48) ].
					currentCharacter == Character space
						or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
					^ self reportLastMatch ].
			(currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
				ifTrue: [ [ self recordMatch: #(49).
					self step.
					currentCharacter == $'
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ currentCharacter between: $g and: $z ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(49).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch