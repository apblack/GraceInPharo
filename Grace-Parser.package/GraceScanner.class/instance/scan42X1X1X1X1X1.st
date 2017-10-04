generated
scan42X1X1X1X1X1
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $( and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or: [ currentCharacter == $[
										or: [ (currentCharacter between: $] and: $^)
												or: [ currentCharacter == $` or: [ currentCharacter >= $| ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch