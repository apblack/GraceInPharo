generated
scan15
	self recordMatch: #(53).
	self step.
	currentCharacter == $e
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $r
				ifTrue: [ self recordMatch: #(53).
					self step.
					currentCharacter == $f
						ifTrue: [ self recordMatch: #(53).
							self step.
							currentCharacter == $a
								ifTrue: [ self recordMatch: #(53).
									self step.
									currentCharacter == $c
										ifTrue: [ self recordMatch: #(53).
											self step.
											currentCharacter == $e
												ifTrue: [ self recordMatch: #(26 53).
													self step.
													(currentCharacter == $'
														or: [ (currentCharacter between: $0 and: $9)
																or: [ (currentCharacter between: $A and: $Z)
																		or: [ currentCharacter == $_
																				or: [ (currentCharacter between: $a and: $z)
																						or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
														ifTrue: [ [ self recordMatch: #(53).
															self step.
															currentCharacter == $'
																or: [ (currentCharacter between: $0 and: $9)
																		or: [ (currentCharacter between: $A and: $Z)
																				or: [ currentCharacter == $_
																						or: [ (currentCharacter between: $a and: $z)
																								or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
																whileTrue ].
													^ self reportLastMatch ].
											(currentCharacter == $'
												or: [ (currentCharacter between: $0 and: $9)
														or: [ (currentCharacter between: $A and: $Z)
																or: [ currentCharacter == $_
																		or: [ (currentCharacter between: $a and: $d)
																				or: [ (currentCharacter between: $f and: $z)
																						or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
												ifTrue: [ [ self recordMatch: #(53).
													self step.
													currentCharacter == $'
														or: [ (currentCharacter between: $0 and: $9)
																or: [ (currentCharacter between: $A and: $Z)
																		or: [ currentCharacter == $_
																				or: [ (currentCharacter between: $a and: $z)
																						or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
														whileTrue ].
											^ self reportLastMatch ].
									(currentCharacter == $'
										or: [ (currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $b)
																		or: [ (currentCharacter between: $d and: $z)
																				or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
										ifTrue: [ [ self recordMatch: #(53).
											self step.
											currentCharacter == $'
												or: [ (currentCharacter between: $0 and: $9)
														or: [ (currentCharacter between: $A and: $Z)
																or: [ currentCharacter == $_
																		or: [ (currentCharacter between: $a and: $z)
																				or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
												whileTrue ].
									^ self reportLastMatch ].
							(currentCharacter == $'
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $b and: $z)
																or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
								ifTrue: [ [ self recordMatch: #(53).
									self step.
									currentCharacter == $'
										or: [ (currentCharacter between: $0 and: $9)
												or: [ (currentCharacter between: $A and: $Z)
														or: [ currentCharacter == $_
																or: [ (currentCharacter between: $a and: $z)
																		or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
										whileTrue ].
							^ self reportLastMatch ].
					(currentCharacter == $'
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $a and: $e)
														or: [ (currentCharacter between: $g and: $z)
																or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
						ifTrue: [ [ self recordMatch: #(53).
							self step.
							currentCharacter == $'
								or: [ (currentCharacter between: $0 and: $9)
										or: [ (currentCharacter between: $A and: $Z)
												or: [ currentCharacter == $_
														or: [ (currentCharacter between: $a and: $z)
																or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
								whileTrue ].
					^ self reportLastMatch ].
			(currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $q)
												or: [ (currentCharacter between: $s and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
				ifTrue: [ [ self recordMatch: #(53).
					self step.
					currentCharacter == $'
						or: [ (currentCharacter between: $0 and: $9)
								or: [ (currentCharacter between: $A and: $Z)
										or: [ currentCharacter == $_
												or: [ (currentCharacter between: $a and: $z)
														or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $d)
										or: [ (currentCharacter between: $f and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(53).
			self step.
			currentCharacter == $'
				or: [ (currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_
										or: [ (currentCharacter between: $a and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch