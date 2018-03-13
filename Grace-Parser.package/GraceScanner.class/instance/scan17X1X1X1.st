generated
scan17X1X1X1
	self recordMatch: #(53).
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $x
				ifTrue: [ self recordMatch: #(35 53).
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
										or: [ (currentCharacter between: $a and: $w)
												or: [ (currentCharacter between: $y and: $z)
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
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $h)
										or: [ (currentCharacter between: $j and: $z)
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