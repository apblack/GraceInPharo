generated
scan1X8
	self recordMatch: #(55).
	self step.
	currentCharacter == $>
		ifTrue: [ self recordMatch: #(53 55).
			self step.
			(currentCharacter == $!
				or: [ (currentCharacter between: $# and: $&)
						or: [ (currentCharacter between: $* and: $+)
								or: [ (currentCharacter between: $- and: $/)
										or: [ currentCharacter == $:
												or: [ (currentCharacter between: $< and: $@)
														or:
															[ '\^|~' includes: currentCharacter ] ] ] ] ] ])
				ifTrue: [ [ self recordMatch: #(55).
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
		ifTrue: [ [ self recordMatch: #(55).
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