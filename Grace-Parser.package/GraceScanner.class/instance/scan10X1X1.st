generated
scan10X1X1
	self recordMatch: #(49).
	self step.
	currentCharacter == $n
		ifTrue: [ self recordMatch: #(49).
			self step.
			currentCharacter == $t
				ifTrue: [ self recordMatch: #(49).
					self step.
					currentCharacter == $i
						ifTrue: [ self recordMatch: #(49).
							self step.
							currentCharacter == $a
								ifTrue: [ self recordMatch: #(49).
									self step.
									currentCharacter == $l
										ifTrue: [ self recordMatch: #(8 49).
											self step.
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
																or: [ (currentCharacter between: $a and: $k)
																		or: [ currentCharacter between: $m and: $z ] ] ] ] ])
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
												or: [ currentCharacter == $_ or: [ currentCharacter between: $b and: $z ] ] ] ])
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
												or: [ (currentCharacter between: $a and: $h)
														or: [ currentCharacter between: $j and: $z ] ] ] ] ])
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
										or: [ (currentCharacter between: $a and: $s)
												or: [ currentCharacter between: $u and: $z ] ] ] ] ])
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
								or: [ (currentCharacter between: $a and: $m)
										or: [ currentCharacter between: $o and: $z ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(49).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch