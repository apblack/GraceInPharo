generated
scan10X1X1
	self recordMatch: #(53).
	self step.
	currentCharacter == $u
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $d
				ifTrue: [ self recordMatch: #(53).
					self step.
					currentCharacter == $e
						ifTrue: [ self recordMatch: #(21 53).
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
												or: [ (currentCharacter between: $a and: $d)
														or: [ (currentCharacter between: $f and: $z)
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
										or: [ (currentCharacter between: $a and: $c)
												or: [ (currentCharacter between: $e and: $z)
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
								or: [ (currentCharacter between: $a and: $t)
										or: [ (currentCharacter between: $v and: $z)
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