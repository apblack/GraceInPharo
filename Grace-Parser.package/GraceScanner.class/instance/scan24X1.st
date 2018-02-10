generated
scan24X1
	self recordMatch: #(56).
	self step.
	currentCharacter == $f
		ifTrue: [ self recordMatch: #(56).
			self step.
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(56).
					self step.
					currentCharacter == $c
						ifTrue: [ self recordMatch: #(56).
							self step.
							currentCharacter == $e
								ifTrue: [ self recordMatch: #(31 56).
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
														or: [ (currentCharacter between: $a and: $d)
																or: [ (currentCharacter between: $f and: $z)
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
												or: [ (currentCharacter between: $a and: $b)
														or: [ (currentCharacter between: $d and: $z)
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
										or: [ (currentCharacter between: $b and: $z)
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
								or: [ (currentCharacter between: $a and: $e)
										or: [ (currentCharacter between: $g and: $z)
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