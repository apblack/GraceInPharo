generated
scan1X8
	self recordMatch: #(46 59).
	self step.
	currentCharacter == $.
		ifTrue: [ self recordMatch: #(59).
			self step.
			currentCharacter == $.
				ifTrue:
					[ ^ self scan1X8X1 ] ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ ('-/:' includes: currentCharacter)
								or: [ (currentCharacter between: $< and: $@)
										or: [ ('\^|~÷' includes: currentCharacter)
												or: [ currentCharacter = (Character value: 8800)
														or: [ (currentCharacter
																between: (Character value: 8804)
																and: (Character value: 8805))
																or: [ currentCharacter = (Character value: 8901) ] ] ] ] ] ] ] ])
		ifTrue: [ self scan1X8X2 ].
	^ self reportLastMatch