generated
scan155X1X1
	self recordMatch: #(42 44 54).
	self step.
	currentCharacter == $.
		ifTrue: [ ^ self scan156 ].
	(currentCharacter == Character space
		or: [ currentCharacter = (Character value: 160) ])
		ifTrue:
			[ ^ self scan155X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ ('µæ' includes: currentCharacter)
												or: [ currentCharacter =
														(Character value: 960) ] ] ] ] ] ])
		ifTrue: [ ^ self scan108 ].
	(currentCharacter <= Character arrowDown
		or: [ (currentCharacter between: $! and: $&)
				or: [ (currentCharacter between: $( and: $-)
						or: [ currentCharacter == $/
								or: [ (currentCharacter between: $: and: $@)
										or: [ (currentCharacter between: $[ and: $^)
												or: [ currentCharacter == $`
														or: [ (currentCharacter between: ${ and: (Character value: 159))
																or: [ (currentCharacter
																		between: (Character value: 161)
																		and: (Character value: 180))
																		or: [ (currentCharacter
																				between: (Character value: 182)
																				and: (Character value: 229))
																				or: [ (currentCharacter
																						between: (Character value: 231)
																						and: (Character value: 959))
																						or: [ (currentCharacter
																								between: (Character value: 961)
																								and: (Character value: 8249))
																								or: [ currentCharacter >= (Character value: 8251) ] ] ] ] ] ] ] ] ] ] ] ])
		ifTrue:
			[ self scan155X1X1X2 ].
	^ self reportLastMatch