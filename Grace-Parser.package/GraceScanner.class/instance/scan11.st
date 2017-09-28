generated
scan11
	self recordMatch: #(40).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(40).
			self step.
			currentCharacter == $a
				ifTrue: [ self recordMatch: #(40).
					self step.
					currentCharacter == $d
						ifTrue: [ self recordMatch: #(40).
							self step.
							currentCharacter == $a
								ifTrue: [ self recordMatch: #(40).
									self step.
									currentCharacter == $b
										ifTrue: [ self recordMatch: #(40).
											self step.
											currentCharacter == $l
												ifTrue: [ self recordMatch: #(40).
													self step.
													currentCharacter == $e
														ifTrue: [ self recordMatch: #(6 40).
															self step.
															(currentCharacter == $'
																or: [ (currentCharacter between: $0 and: $9)
																		or: [ (currentCharacter between: $A and: $Z)
																				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
																ifTrue: [ [ self recordMatch: #(40).
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
																				or: [ (currentCharacter between: $a and: $d)
																						or: [ currentCharacter between: $f and: $z ] ] ] ] ])
														ifTrue: [ [ self recordMatch: #(40).
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
												ifTrue: [ [ self recordMatch: #(40).
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
														or: [ ('_a' includes: currentCharacter)
																or: [ currentCharacter between: $c and: $z ] ] ] ])
										ifTrue: [ [ self recordMatch: #(40).
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
								ifTrue: [ [ self recordMatch: #(40).
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
												or: [ (currentCharacter between: $a and: $c)
														or: [ currentCharacter between: $e and: $z ] ] ] ] ])
						ifTrue: [ [ self recordMatch: #(40).
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
				ifTrue: [ [ self recordMatch: #(40).
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
								or: [ (currentCharacter between: $a and: $d)
										or: [ currentCharacter between: $f and: $z ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(40).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch