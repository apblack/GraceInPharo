generated
scan6X1
	self recordMatch: #(51).
	self step.
	currentCharacter == $i
		ifTrue: [ self recordMatch: #(51).
			self step.
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(51).
					self step.
					currentCharacter == $s
						ifTrue: [ self recordMatch: #(24 51).
							self step.
							(currentCharacter == $'
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ ('µæ' includes: currentCharacter)
																		or: [ currentCharacter =
																				(Character value: 960) ] ] ] ] ] ])
								ifTrue: [ [ self recordMatch: #(51).
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
												or: [ (currentCharacter between: $a and: $r)
														or: [ (currentCharacter between: $t and: $z)
																or: [ ('µæ' includes: currentCharacter)
																		or: [ currentCharacter =
																				(Character value: 960) ] ] ] ] ] ] ])
						ifTrue: [ [ self recordMatch: #(51).
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
				ifTrue: [ [ self recordMatch: #(51).
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
		ifTrue: [ [ self recordMatch: #(51).
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