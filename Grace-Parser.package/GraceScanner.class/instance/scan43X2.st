generated
scan43X2
	(currentCharacter <= $!
		or: [ (currentCharacter between: $# and: $&)
				or: [ (currentCharacter between: $( and: $/)
						or: [ (currentCharacter between: $: and: $@)
								or:
									[ ('[^`' includes: currentCharacter) or: [ currentCharacter >= $| ] ] ] ] ])
		ifTrue: [ ^ self scan20 ].
	^ self reportLastMatch