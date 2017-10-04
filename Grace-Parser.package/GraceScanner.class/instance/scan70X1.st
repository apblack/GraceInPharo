generated
scan70X1
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $( and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or: [ currentCharacter == $[
										or: [ (currentCharacter between: $] and: $^)
												or: [ currentCharacter == $` or: [ currentCharacter >= $| ] ] ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch