generated
scan72X3
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $( and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or: [ currentCharacter == $[
										or: [ (currentCharacter between: $] and: $^)
												or: [ currentCharacter == $` or: [ currentCharacter >= $| ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch