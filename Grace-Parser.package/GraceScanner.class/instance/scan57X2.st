generated
scan57X2
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ currentCharacter between: $w and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $( and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or:
									[ ('[^`' includes: currentCharacter) or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch