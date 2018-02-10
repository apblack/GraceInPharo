generated
scanForToken
	self step.
	currentCharacter == $%
		ifTrue: [ (self scanForString: 'hierarchy')
				ifTrue: [ ^ self recordAndReportMatch: #(1) ].
			^ self reportLastMatch ].
	currentCharacter == $(
		ifTrue: [ ^ self recordAndReportMatch: #(2) ].
	currentCharacter == $)
		ifTrue: [ ^ self recordAndReportMatch: #(4) ].
	currentCharacter == $;
		ifTrue: [ ^ self recordAndReportMatch: #(3) ].
	((currentCharacter between: Character tab and: Character cr)
		or: [ currentCharacter == Character space ])
		ifTrue:
			[ ^ self scanForTokenX2 ].
	((currentCharacter between: $0 and: $9)
		or: [ (currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ])
		ifTrue:
			[ self scanForTokenX1 ].
	^ self reportLastMatch