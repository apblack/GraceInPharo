generated
scan7X1
	self recordMatch: #(53).
	self step.
	currentCharacter == $f
		ifTrue: [ self recordMatch: #(8 53).
			self step.
			(currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ])
				ifTrue: [ [ self recordMatch: #(53).
					self step.
					currentCharacter == $'
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $a and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ] whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(53).
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