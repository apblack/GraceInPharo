generated
scan26X1X1X1X1
	self recordMatch: #(43 56).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self recordAndReportMatch: #(54) ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue: [ [ self step.
			currentCharacter == $.
				ifTrue: [ ^ self recordAndReportMatch: #(54) ].
			currentCharacter == Character space
				or: [ currentCharacter = (Character value: 160) ] ] whileTrue.
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ ('µæ' includes: currentCharacter)
												or: [ currentCharacter =
														(Character value: 960) ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(56).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ] whileTrue ].
	^ self reportLastMatch