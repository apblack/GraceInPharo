generated
scanForToken
	self step.
	currentCharacter == Character lf
		ifTrue: [ [ self recordMatch: #(2).
			self step.
			currentCharacter == Character tab
				or: [ currentCharacter == Character space
						or: [ currentCharacter = (Character value: 160) ] ] ] whileTrue.
			^ self reportLastMatch ].
	currentCharacter == Character cr
		ifTrue: [ self recordMatch: #(2).
			self step.
			((currentCharacter between: Character tab and: Character lf)
				or: [ currentCharacter == Character space
						or: [ currentCharacter = (Character value: 160) ] ])
				ifTrue: [ [ self recordMatch: #(2).
					self step.
					currentCharacter == Character tab
						or: [ currentCharacter == Character space
								or: [ currentCharacter = (Character value: 160) ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $/
		ifTrue:
			[ ^ self scanForTokenX1 ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter between: $a and: $z ])
		ifTrue: [ [ self recordMatch: #(6).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter between: $a and: $z ] ] ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == Character tab
		or: [ currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ])
		ifTrue: [ [ self recordMatch: #(1).
			self step.
			currentCharacter == Character tab
				or: [ currentCharacter == Character space
						or: [ currentCharacter = (Character value: 160) ] ] ] whileTrue ].
	^ self reportLastMatch