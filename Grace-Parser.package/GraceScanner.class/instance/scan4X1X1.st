generated
scan4X1X1
	self recordMatch: #(53).
	self step.
	currentCharacter == $o
		ifTrue: [ self recordMatch: #(53).
			self step.
			currentCharacter == $w
				ifTrue: [ self recordMatch: #(53).
					self step.
					currentCharacter == $n
						ifTrue: [ self recordMatch: #(29 53).
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
												or: [ (currentCharacter between: $a and: $m)
														or: [ (currentCharacter between: $o and: $z)
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
										or: [ (currentCharacter between: $a and: $v)
												or: [ (currentCharacter between: $x and: $z)
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
								or: [ (currentCharacter between: $a and: $n)
										or: [ (currentCharacter between: $p and: $z)
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