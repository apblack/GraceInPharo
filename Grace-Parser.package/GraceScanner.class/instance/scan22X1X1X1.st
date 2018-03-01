generated
scan22X1X1X1
	self recordMatch: #(56).
	self step.
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(56).
			self step.
			currentCharacter == $d
				ifTrue: [ self recordMatch: #(11 56).
					self step.
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
					^ self reportLastMatch ].
			(currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $c)
												or: [ (currentCharacter between: $e and: $z)
														or: [ ('µæ' includes: currentCharacter)
																or: [ currentCharacter =
																		(Character value: 960) ] ] ] ] ] ] ])
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
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $n)
										or: [ (currentCharacter between: $p and: $z)
												or: [ ('µæ' includes: currentCharacter)
														or: [ currentCharacter =
																(Character value: 960) ] ] ] ] ] ] ])
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