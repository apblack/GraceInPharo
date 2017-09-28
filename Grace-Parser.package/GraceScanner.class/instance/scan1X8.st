generated
scan1X8
	self recordMatch: #(47).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(45 47).
			self step.
			(currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ])
				ifTrue: [ [ self recordMatch: #(47).
					self step.
					currentCharacter == $!
						or: [ (currentCharacter between: $# and: $&)
								or: [ (currentCharacter between: $* and: $+)
										or: [ (currentCharacter between: $- and: $/)
												or: [ currentCharacter == $:
														or: [ (currentCharacter between: $< and: $@)
																or:
																	[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter == $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $* and: $+)
						or: [ (currentCharacter between: $- and: $/)
								or: [ currentCharacter == $:
										or: [ (currentCharacter between: $< and: $=)
												or: [ (currentCharacter between: $? and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ])
		ifTrue: [ [ self recordMatch: #(47).
			self step.
			currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ] ]
				whileTrue ].
	^ self reportLastMatch